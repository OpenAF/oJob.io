#!/bin/bash
# Downloads and installs the latest 'ntwire-relay' release for the current OS/architecture.
# https://github.com/nmaguiar/ntwire
# Author: Nuno Aguiar
#
# Usage: ./ntwire-relay.sh
#
# Env vars:
#   INSTALL_DIR - where to install the binary (default: /usr/local/bin)
#   ARCH        - override the detected architecture (default: uname -m)
#   SYST        - override the detected OS (default: uname -s)

set -e

REPO="nmaguiar/ntwire"
BIN="ntwire-relay"
INSTALL_DIR="${INSTALL_DIR:-/usr/local/bin}"

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

BINFILE="$BIN"
[ "$OOS" = "windows" ] && BINFILE="${BIN}.exe"

if [ ! -f "$BINFILE" ]; then
  echo "Expected '$BINFILE' was not found inside $ASSET_NAME." >&2
  exit 1
fi

chmod +x "$BINFILE"

mkdir -p "$INSTALL_DIR" 2>/dev/null || true
if [ -w "$INSTALL_DIR" ]; then
  mv -f "$BINFILE" "$INSTALL_DIR/$BINFILE"
elif command -v sudo >/dev/null 2>&1; then
  echo "Elevated privileges are required to write to $INSTALL_DIR..."
  sudo mv -f "$BINFILE" "$INSTALL_DIR/$BINFILE"
else
  echo "Cannot write to '$INSTALL_DIR' and 'sudo' is not available. Set INSTALL_DIR to a writable path." >&2
  exit 1
fi

echo "Installed $BIN $VERSION to $INSTALL_DIR/$BINFILE"
