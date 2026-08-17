#!/bin/bash
# Downloads and installs the latest 'ntwire-gui' release for the current OS/architecture.
# https://github.com/nmaguiar/ntwire
# Author: Nuno Aguiar
#
# Usage: ./ntwire-gui.sh [-d|--download-only] [-o|--output-dir <dir>]
#
# Env vars:
#   INSTALL_DIR   - where to install (default: /Applications on macOS, /usr/local/bin otherwise)
#   DOWNLOAD_ONLY - if set (1/true/yes), just download & extract the app/binary
#                   without installing it (same as --download-only)
#   OUTPUT_DIR    - where to place the app/binary when DOWNLOAD_ONLY is set
#                   (default: current directory)
#   ARCH          - override the detected architecture (default: uname -m)
#   SYST          - override the detected OS (default: uname -s)

set -e

REPO="nmaguiar/ntwire"
BIN="ntwire-gui"
DOWNLOAD_ONLY="${DOWNLOAD_ONLY:-}"
OUTPUT_DIR="${OUTPUT_DIR:-.}"

while [ $# -gt 0 ]; do
  case "$1" in
    -d|--download-only)
      DOWNLOAD_ONLY="1"
      shift
      ;;
    -o|--output-dir)
      OUTPUT_DIR="$2"
      shift 2
      ;;
    -h|--help)
      echo "Usage: $0 [-d|--download-only] [-o|--output-dir <dir>]"
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      exit 1
      ;;
  esac
done

case "$DOWNLOAD_ONLY" in
  1|true|yes) DOWNLOAD_ONLY="1" ;;
  *) DOWNLOAD_ONLY="" ;;
esac

# Resolve to an absolute path now, since we later cd into a temp dir.
case "$OUTPUT_DIR" in
  /*) ;;
  *) OUTPUT_DIR="$(pwd)/$OUTPUT_DIR" ;;
esac

ARCH=${ARCH:-$(uname -m)}
SYST=${SYST:-$(uname -s)}

case "$ARCH" in
  x86_64|amd64)
    OARCH="amd64"
    ;;
  aarch64|aarch64_be|armv8b|armv8l|arm64)
    OARCH="arm64"
    ;;
  *)
    echo "Architecture '$ARCH' is not supported by $BIN." >&2
    exit 1
    ;;
esac

case "$SYST" in
  Darwin)
    OOS="darwin"
    ;;
  Linux)
    OOS="linux"
    ;;
  MINGW*|MSYS*|CYGWIN*)
    OOS="windows"
    ;;
  *)
    echo "OS '$SYST' is not supported by $BIN." >&2
    exit 1
    ;;
esac

# ntwire-gui currently only ships a macOS build for Apple Silicon (arm64).
if [ "$OOS" = "darwin" ] && [ "$OARCH" != "arm64" ]; then
  echo "$BIN currently only publishes a macOS build for arm64 (Apple Silicon)." >&2
  exit 1
fi

if [ "$OOS" = "darwin" ]; then
  INSTALL_DIR="${INSTALL_DIR:-/Applications}"
else
  INSTALL_DIR="${INSTALL_DIR:-/usr/local/bin}"
fi

if command -v curl >/dev/null 2>&1; then
  FETCHER="curl"
elif command -v wget >/dev/null 2>&1; then
  FETCHER="wget"
else
  echo "Either curl or wget is required to install $BIN." >&2
  exit 1
fi

fetch() { # fetch <url> -> stdout
  if [ "$FETCHER" = "curl" ]; then
    curl -fsSL "$1"
  else
    wget -qO- "$1"
  fi
}

fetchToFile() { # fetchToFile <url> <file>
  if [ "$FETCHER" = "curl" ]; then
    curl -fsSL -o "$2" "$1"
  else
    wget -qO "$2" "$1"
  fi
}

echo "Looking up the latest '$BIN' release for $OOS/$OARCH..."
JSON=$(fetch "https://api.github.com/repos/$REPO/releases/latest")

VERSION=$(printf '%s\n' "$JSON" | grep '"tag_name"' | head -1 | sed -E 's/.*"tag_name": *"([^"]+)".*/\1/')
if [ -z "$VERSION" ]; then
  echo "Could not determine the latest release of $REPO (GitHub API rate limit?)." >&2
  exit 1
fi

# Pair up each asset's "name" with its "browser_download_url" (GitHub's API
# returns one field per line), then pick the one matching this OS/arch.
# The 'v?' below tolerates the inconsistent "v" version prefix used on the
# macOS ntwire-gui asset (e.g. ntwire-gui_v0.0.39_darwin_arm64.zip).
ASSET_URL=$(printf '%s\n' "$JSON" | awk '
  /"name":/                { n=$0; sub(/.*"name": *"/,"",n); sub(/",?$/,"",n); name=n }
  /"browser_download_url"/ { u=$0; sub(/.*"browser_download_url": *"/,"",u); sub(/",?$/,"",u); print name "\t" u }
' | grep -E "^${BIN}_v?[0-9]" | grep -E "_${OOS}_${OARCH}\.(tar\.gz|zip)\$" | head -1 | cut -f2)

if [ -z "$ASSET_URL" ]; then
  echo "No '$BIN' $VERSION release asset found for $OOS/$OARCH." >&2
  exit 1
fi

ASSET_NAME=$(basename "$ASSET_URL")
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

echo "Downloading $ASSET_NAME ($VERSION)..."
fetchToFile "$ASSET_URL" "$TMPDIR/$ASSET_NAME"

echo "Extracting..."
cd "$TMPDIR"
case "$ASSET_NAME" in
  *.tar.gz)
    tar xzf "$ASSET_NAME"
    ;;
  *.zip)
    if ! command -v unzip >/dev/null 2>&1; then
      echo "'unzip' is required to extract $ASSET_NAME." >&2
      exit 1
    fi
    unzip -q "$ASSET_NAME"
    ;;
esac

installPath() { # installPath <source> <destName>
  if [ -w "$INSTALL_DIR" ]; then
    rm -rf "${INSTALL_DIR:?}/$2"
    mv -f "$1" "$INSTALL_DIR/$2"
  elif command -v sudo >/dev/null 2>&1; then
    echo "Elevated privileges are required to write to $INSTALL_DIR..."
    sudo rm -rf "${INSTALL_DIR:?}/$2"
    sudo mv -f "$1" "$INSTALL_DIR/$2"
  else
    echo "Cannot write to '$INSTALL_DIR' and 'sudo' is not available. Set INSTALL_DIR to a writable path." >&2
    exit 1
  fi
}

if [ "$OOS" = "darwin" ]; then
  # macOS ships ntwire-gui as an .app bundle rather than a bare binary.
  APPBUNDLE=$(find . -maxdepth 1 -name "*.app" | head -1)
  if [ -z "$APPBUNDLE" ]; then
    echo "Expected an '.app' bundle inside $ASSET_NAME but none was found." >&2
    exit 1
  fi
  chmod +x "$APPBUNDLE/Contents/MacOS/"* 2>/dev/null || true
  if [ -n "$DOWNLOAD_ONLY" ]; then
    mkdir -p "$OUTPUT_DIR" 2>/dev/null || true
    rm -rf "${OUTPUT_DIR:?}/$(basename "$APPBUNDLE")"
    mv -f "$APPBUNDLE" "$OUTPUT_DIR/$(basename "$APPBUNDLE")"
    echo "Downloaded $BIN $VERSION to $OUTPUT_DIR/$(basename "$APPBUNDLE")"
  else
    mkdir -p "$INSTALL_DIR" 2>/dev/null || true
    installPath "$APPBUNDLE" "$(basename "$APPBUNDLE")"
    echo "Installed $BIN $VERSION to $INSTALL_DIR/$(basename "$APPBUNDLE")"
  fi
else
  BINFILE="$BIN"
  [ "$OOS" = "windows" ] && BINFILE="${BIN}.exe"
  if [ ! -f "$BINFILE" ]; then
    echo "Expected '$BINFILE' was not found inside $ASSET_NAME." >&2
    exit 1
  fi
  chmod +x "$BINFILE"
  if [ -n "$DOWNLOAD_ONLY" ]; then
    mkdir -p "$OUTPUT_DIR" 2>/dev/null || true
    mv -f "$BINFILE" "$OUTPUT_DIR/$BINFILE"
    echo "Downloaded $BIN $VERSION to $OUTPUT_DIR/$BINFILE"
  else
    mkdir -p "$INSTALL_DIR" 2>/dev/null || true
    installPath "$BINFILE" "$BINFILE"
    echo "Installed $BIN $VERSION to $INSTALL_DIR/$BINFILE"
  fi
fi
