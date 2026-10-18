#!/usr/bin/env bash
# Generated standalone OpenAF Docker CLI. Do not edit.
# OPENAF_DOCKER_MANAGED_SCRIPT_V1
cli_shell=bash
cli_quote() { printf "'"; printf '%s' "$1" | sed "s/'/'\\\\''/g"; printf "'"; }
cli_managed_script() {
    [ -f "$1" ] && [ ! -L "$1" ] && head -n 5 "$1" | grep -q '^# OPENAF_DOCKER_MANAGED_SCRIPT_V1$'
}
cli_install() {
    cli_action=$1; shift
    cli_aliases=false
    cli_replace=false
    cli_bin=${HOME:?HOME must be set}/.local/bin
    if [ "$cli_shell" = zsh ]; then cli_rc=${ZDOTDIR:-$HOME}/.zshrc; else cli_rc=$HOME/.bashrc; fi
    while [ $# -gt 0 ]; do
        case "$1" in
            --aliases) cli_aliases=true; shift ;;
            --replace-aliases) cli_replace=true; shift ;;
            --bin-dir|--rc-file)
                [ $# -ge 2 ] && [ -n "$2" ] || fail "$1 requires a path"
                case "$1" in --bin-dir) cli_bin=$2 ;; *) cli_rc=$2 ;; esac
                shift 2 ;;
            *) fail "unknown installation option: $1" ;;
        esac
    done
    # Normalize without readlink -f; no startup file is sourced or executed.
    case "$cli_bin" in /*) ;; *) cli_bin=$PWD/$cli_bin ;; esac
    case "$cli_rc" in /*) ;; *) cli_rc=$PWD/$cli_rc ;; esac
    cli_target=$cli_bin/openaf-docker.$cli_shell
    if [ -e "$cli_target" ] || [ -L "$cli_target" ]; then
        cli_managed_script "$cli_target" || fail "refusing to replace unrelated installation: $cli_target"
    elif [ "$cli_action" = --update ]; then
        fail 'no managed installation to update; use --install first'
    fi
    cli_link=$cli_bin/openaf-docker
    if [ -e "$cli_link" ] || [ -L "$cli_link" ]; then
        [ -L "$cli_link" ] || fail "refusing to replace unrelated file: $cli_link"
        cli_link_target=$(readlink "$cli_link")
        case "$cli_link_target" in /*) ;; *) cli_link_target=$cli_bin/$cli_link_target ;; esac
        case "$cli_link_target" in "$cli_bin/openaf-docker.bash"|"$cli_bin/openaf-docker.zsh") ;; *) fail "unmanaged symlink: $cli_link" ;; esac
        cli_managed_script "$cli_link_target" || fail "unmanaged symlink target: $cli_link"
    fi
    cli_begin='# >>> openaf-docker managed aliases >>>'
    cli_end='# <<< openaf-docker managed aliases <<<'
    cli_had_block=false
    if [ -f "$cli_rc" ] && grep -q -F "$cli_begin" "$cli_rc"; then cli_had_block=true; fi
    if [ "$cli_action" = --update ] && [ "$cli_had_block" = true ]; then cli_aliases=true; fi
    cli_tmp=
    cli_copy=
    cli_newlink=
    cli_mode=
    trap 'rm -f -- "${cli_tmp:-}" "${cli_copy:-}" "${cli_newlink:-}" "${cli_mode:-}"' EXIT
    if [ "$cli_aliases" = true ]; then
        [ ! -L "$cli_rc" ] || fail 'startup file is a symlink; pass its actual target with --rc-file'
        [ ! -e "$cli_rc" ] || [ -f "$cli_rc" ] || fail 'startup file must be a regular file'
        [ -d "${cli_rc%/*}" ] || fail 'startup directory does not exist; use --rc-file'
        cli_tmp=$(mktemp "${cli_rc}.openaf-docker.XXXXXX") || fail 'cannot prepare startup update'
        if [ -f "$cli_rc" ]; then
            awk -v begin="$cli_begin" -v end="$cli_end" '
                $0 == begin { if (inside || seen++) exit 3; inside=1; next }
                $0 == end { if (!inside) exit 3; inside=0; next }
                !inside { print }
                END { if (inside) exit 3 }
            ' "$cli_rc" > "$cli_tmp" || fail 'malformed or duplicate managed alias block; repair it before installing'
        fi
        if [ "$cli_replace" != true ]; then
            if grep -E '(^|[;[:space:]])alias[[:space:]]+(openaf-docker|oafp|ojob|openaf|oaf)=|^[[:space:]]*(function[[:space:]]+)?(openaf-docker|oafp|ojob|openaf|oaf)[[:space:]]*\(' "$cli_tmp" >/dev/null; then
                fail 'unmanaged aliases/functions exist; use --replace-aliases to intentionally shadow them'
            fi
            for cli_native in openaf-docker oafp ojob openaf oaf; do
                # Existing aliases were already opted into. Newly added names
                # still need collision checks when updating an older block.
                if [ "$cli_had_block" = true ] && grep -q "^alias $cli_native=" "$cli_rc"; then continue; fi
                cli_found=$(command -v "$cli_native" 2>/dev/null || :)
                case "$cli_found" in ''|"$cli_link"|"$cli_target") ;; *) fail "$cli_native already exists ($cli_found); use --replace-aliases to intentionally shadow it" ;; esac
            done
        fi
        {
            printf '%s\n' "$cli_begin"
            printf '# Installed locally; configuration is read at invocation time.\n'
            for cli_native in openaf-docker oafp ojob openaf oaf; do
                cli_value=$(cli_quote "$cli_target")
                [ "$cli_native" = openaf-docker ] || cli_value="$cli_value $cli_native"
                printf 'alias %s=' "$cli_native"
                cli_quote "$cli_value"
                printf '\n'
            done
            printf '%s\n' "$cli_end"
        } >> "$cli_tmp"
    fi
    mkdir -p -- "$cli_bin"
    cli_copy=$(mktemp "$cli_bin/.openaf-docker.XXXXXX") || fail 'cannot prepare installed script'
    cp -- "$cli_self" "$cli_copy"
    chmod 755 "$cli_copy"
    if [ ! -f "$cli_target" ] || ! cmp -s "$cli_copy" "$cli_target"; then mv -f -- "$cli_copy" "$cli_target"; fi
    cli_newlink=$cli_bin/.openaf-docker-link.$$
    ln -s "openaf-docker.$cli_shell" "$cli_newlink"
    mv -f -- "$cli_newlink" "$cli_link"
    if [ "$cli_aliases" = true ]; then
        if [ ! -f "$cli_rc" ] || ! cmp -s "$cli_tmp" "$cli_rc"; then
            if [ -f "$cli_rc" ]; then
                cli_backup=$(mktemp "${cli_rc}.openaf-docker.backup.XXXXXX")
                cp -p -- "$cli_rc" "$cli_backup"
                # Preserve the existing startup file's permissions.
                cli_mode=$(mktemp "${cli_rc}.openaf-docker.XXXXXX")
                cp -p -- "$cli_rc" "$cli_mode"
                cat "$cli_tmp" > "$cli_mode"
                mv -f -- "$cli_mode" "$cli_rc"
                printf 'Backup: %s\n' "$cli_backup"
            else
                mv -- "$cli_tmp" "$cli_rc"
            fi
        fi
        printf 'Activate in a new shell, or run: source '
        cli_quote "$cli_rc"
        printf '\n'
    fi
    printf 'Installed: %s\nAdd its directory to PATH if needed. Image updates remain explicit: docker pull openaf/openaf:latest\n' "$cli_target"
    rm -f -- "${cli_tmp:-}" "${cli_copy:-}" "${cli_newlink:-}" "${cli_mode:-}"
    trap - EXIT
}
# shellcheck disable=SC1003,SC2016
cli_bootstrap='OPENAF_CLI_BOOTSTRAP_JS='\''// Run the existing image helper, but treat reported oPack errors as failures.
// startLog/dumpLog are public OpenAF APIs. No package-resolution logic lives here.
try {
    startLog(undefined, -1);
    // Published helpers test isFolder; current io.listFiles returns isDirectory.
    // Adapt only the explicitly selected input directory, in this subprocess.
    var listFiles = io.listFiles;
    io.listFiles = function(path) {
        var result = listFiles(path);
        if (String(path) === String(getEnv('\''\'\'''\''OPACKS_DIR'\''\'\'''\''))) {
            result.files.forEach(function(entry) {
                if (entry.isDirectory) entry.isFolder = true;
            });
        }
        return result;
    };
    try {
        load('\''\'\'''\''/openaf/.docker/installOPacks.js'\''\'\'''\'');
    } finally {
        io.listFiles = listFiles;
    }
    var failed = dumpLog().some(function(entry) { return entry.t === '\''\'\'''\''ERROR'\''\'\'''\''; });
    stopLog();
    if (failed) {
        printErr('\''\'\'''\''openaf-docker: oPack bootstrap reported errors; application not started'\''\'\'''\'');
        exit(1);
    }
} catch (error) {
    printErr('\''\'\'''\''openaf-docker: bootstrap failed: '\''\'\'''\'' + error);
    exit(1);
}
'\''
set -eu
fail() { printf '\''openaf-docker: %s\n'\'' "$*" >&2; exit 1; }
PATH=/openaf:$PATH
export PATH
for tool in openaf ojob oafp; do
    [ -x "/openaf/$tool" ] || fail "image lacks /openaf/$tool"
done
# Register unknown numeric users only in the disposable container, using the
# image'\''s existing group-writable passwd policy. Java obtains user.home here.
uid=$(id -u)
gid=$(id -g)
home=$(awk -F: -v uid="$uid" '\''$3 == uid { print $6; exit }'\'' /etc/passwd)
if [ -z "$home" ]; then
    [ -w /etc/passwd ] || fail '\''unknown UID and /etc/passwd is not writable; use OPENAF_DOCKER_USER=image or a compatible image'\''
    home=$(mktemp -d /tmp/openaf-cli.XXXXXX) || fail '\''cannot create private home'\''
    printf '\''openaf-cli-%s:x:%s:%s:OpenAF CLI:%s:/bin/sh\n'\'' "$uid" "$uid" "$gid" "$home" >> /etc/passwd
fi
[ -d "$home" ] && [ -w "$home" ] || fail '\''image user home is not writable; choose a compatible UID/image'\''
HOME=$home
export HOME
[ -w /openaf ] || fail '\''/openaf is not writable for this identity; use a compatible image or user setting'\''
if [ -n "${OPACKS:-}" ] || [ -n "${OPACKS_DIR:-}" ] || [ -n "${OPACKS_DB:-}" ] || [ "${OAF_ORIG+x}" = x ]; then
    [ -r /openaf/.docker/installOPacks.js ] || fail '\''image lacks the oPack installation helper'\''
    [ ! -e /openaf/.opack.db ] || [ -w /openaf/.opack.db ] || fail '\''image oPack database is not writable'\''
    (
        # Empty values retain their application semantics, but must not become
        # empty installation requests in the helper subprocess.
        [ -n "${OPACKS:-}" ] || unset OPACKS
        [ -n "${OPACKS_DIR:-}" ] || unset OPACKS_DIR
        [ -n "${OPACKS_DB:-}" ] || unset OPACKS_DB
        /openaf/openaf -c "$OPENAF_CLI_BOOTSTRAP_JS"
    ) </dev/null >&2 || exit $?
fi
# addOPackRemoteDB affects only the bootstrap JVM. Carry requested repositories
# into the application using OpenAF'\''s native environment interface.
if [ -n "${OPACKS_DB:-}" ]; then
    OAF_OPACKS=${OAF_OPACKS:+$OAF_OPACKS,}$OPACKS_DB
    export OAF_OPACKS
fi
unset OPENAF_CLI_BOOTSTRAP_JS
case "$1" in openaf|ojob|oafp) command=$1; shift ;; *) fail '\''invalid internal selector'\'' ;; esac
exec "/openaf/$command" "$@"
'
# Generated standalone OpenAF Docker CLI. Source: openaf/cli/. Do not edit.
# OPENAF_DOCKER_MANAGED_SCRIPT_V1
# POSIX syntax deliberately shared by Bash 3.2+ and Zsh.
set -eu
fail() { printf 'openaf-docker: %s\n' "$*" >&2; exit 2; }
usage() {
    cat <<'HELP'
Usage: openaf-docker {oafp|ojob|openaf|oaf} [application arguments...]
       openaf-docker --install|--update [--aliases] [--replace-aliases]
                     [--bin-dir DIR] [--rc-file FILE]

Install/update from this local script; aliases are opt-in. No downloads or image pulls.
Configuration (exported variables):

  OPENAF_DOCKER_IMAGE     openaf/openaf:latest (tag or digest)
  OPENAF_DOCKER_READONLY  false | true (workspace mount only)
  OPENAF_DOCKER_TTY       auto | never | always
  OPENAF_DOCKER_USER      host | image | numeric UID:GID
  OPENAF_DOCKER_ENV       comma-separated additional exported names

Forwarded by default: OAF_JARGS, OPACKS, OPACKS_DB; OPACKS_DIR maps a host directory.
Only the physical current directory is mounted at /work. Create output directories first.
Native-named aliases pass all options, including --help, to their selected application.
HELP
}
# Determine the invoked source without readlink -f (installation may use a link).
cli_self=$0
case "$cli_self" in */*) ;; *) cli_self=$(command -v "$cli_self") ;; esac
cli_basename=${0##*/}
case "$cli_basename" in
    oafp|ojob|openaf|oaf) cli_selector=$cli_basename ;;
    *)
        case "${1:-}" in
            --help|-h) usage; exit 0 ;;
            --install|--update) cli_install "$@"; exit 0 ;;
            oafp|ojob|openaf|oaf) cli_selector=$1; shift ;;
            *) fail 'expected oafp, ojob, openaf, or oaf; see --help' ;;
        esac ;;
esac
# oaf is the native short name for the same OpenAF launcher.
case "$cli_selector" in oaf) cli_selector=openaf ;; esac
command -v docker >/dev/null 2>&1 || fail 'docker executable not found in PATH'
case "$(command -v docker)" in *.exe) fail 'use the Linux docker CLI inside WSL2; docker.exe is unsupported' ;; esac
cli_image=${OPENAF_DOCKER_IMAGE-openaf/openaf:latest}
case "$cli_image" in ''|-*|*[[:space:]]*) fail 'OPENAF_DOCKER_IMAGE must be a nonempty image reference without whitespace' ;; esac
cli_readonly=${OPENAF_DOCKER_READONLY-false}
case "$cli_readonly" in true|false) ;; *) fail 'OPENAF_DOCKER_READONLY must be true or false' ;; esac
cli_tty=${OPENAF_DOCKER_TTY-auto}
case "$cli_tty" in auto|never|always) ;; *) fail 'OPENAF_DOCKER_TTY must be auto, never, or always' ;; esac
cli_user=${OPENAF_DOCKER_USER-host}
case "$cli_user" in
    host|image) ;;
    *:*) cli_uid=${cli_user%%:*}; cli_gid=${cli_user#*:}
         case "$cli_uid" in ''|*[!0-9]*) fail 'OPENAF_DOCKER_USER must be host, image, or numeric UID:GID' ;; esac
         case "$cli_gid" in ''|*[!0-9]*) fail 'OPENAF_DOCKER_USER must be host, image, or numeric UID:GID' ;; esac ;;
    *) fail 'OPENAF_DOCKER_USER must be host, image, or numeric UID:GID' ;;
esac
cli_work=$(pwd -P && printf .) || fail 'cannot resolve current directory'
cli_work=${cli_work%.}
cli_work=${cli_work%?}
[ "$cli_work" != / ] || fail 'refusing to mount the host filesystem root'
# Docker --mount uses CSV parsing. Reject delimiters rather than silently bind
# another source. Spaces, apostrophes, colons, dollars and globs are supported.
cli_cr=$(printf '\r')
cli_mount_path() {
    case "$1" in *','*|*'"'*|*'
'*|*"$cli_cr"*) fail 'mount source contains unsupported comma, double quote, CR, or newline' ;; esac
    [ -d "$1" ] || fail "mount source is not a directory: $1"
}
cli_mount_path "$cli_work"
cli_opacks_dir=
if printenv OPACKS_DIR >/dev/null 2>&1 && [ -n "${OPACKS_DIR:-}" ]; then
    cli_opacks_dir=$(CDPATH='' cd -- "$OPACKS_DIR" && pwd -P && printf .) || fail 'OPACKS_DIR must name an existing host directory'
    cli_opacks_dir=${cli_opacks_dir%.}
    cli_opacks_dir=${cli_opacks_dir%?}
    cli_mount_path "$cli_opacks_dir"
fi
# Build Docker's argv around the original application argv. No string execution.
set -- "$cli_selector" "$@"
set -- "$cli_image" -c "$cli_bootstrap" openaf-cli "$@"
set -- --entrypoint /bin/sh "$@"
if [ "$cli_readonly" = true ]; then cli_mount="type=bind,src=$cli_work,dst=/work,readonly"; else cli_mount="type=bind,src=$cli_work,dst=/work"; fi
set -- --mount "$cli_mount" --workdir /work "$@"
if [ -n "$cli_opacks_dir" ]; then
    set -- --mount "type=bind,src=$cli_opacks_dir,dst=/_openaf_cli/opacks,readonly" --env OPACKS_DIR=/_openaf_cli/opacks "$@"
elif printenv OPACKS_DIR >/dev/null 2>&1; then
    set -- --env OPACKS_DIR "$@"
fi
case "$cli_user" in
    host) set -- --user "$(id -u):$(id -g)" --group-add 0 "$@" ;;
    image) ;;
    *) set -- --user "$cli_user" --group-add 0 "$@" ;;
esac
if [ "$cli_tty" = always ]; then
    [ -t 0 ] || fail 'OPENAF_DOCKER_TTY=always requires terminal stdin'
    set -- --tty "$@"
elif [ "$cli_tty" = auto ] && [ -t 0 ] && [ -t 1 ] && [ -t 2 ]; then
    set -- --tty "$@"
fi
# Check presence one name at a time; never parse values or the full environment.
cli_names=OAF_JARGS,OPACKS,OPACKS_DB,TERM
if [ -n "${OPENAF_DOCKER_ENV:-}" ]; then cli_names=$cli_names,$OPENAF_DOCKER_ENV; fi
cli_seen=,
while :; do
    cli_name=${cli_names%%,*}
    case "$cli_name" in ''|[!a-zA-Z_]*|*[!a-zA-Z0-9_]*) fail 'OPENAF_DOCKER_ENV contains an invalid or empty name' ;; esac
    case "$cli_name" in
        OPENAF_DOCKER_*|OPENAF_CLI_*|cli_*|PATH|HOME|PWD|OLDPWD|CDPATH|IFS|ENV|BASH_ENV|SHELLOPTS|BASHOPTS|ZDOTDIR|OAF_HOME|OAF_DIR|OAF_OPACKS|JAVA_HOME|OPENAF|OJOB|OAFP|OPACK_EXEC|OPACKS_DIR|TINI_*) fail "reserved environment name: $cli_name" ;;
    esac
    case "$cli_seen" in *",$cli_name,"*) ;;
        *) cli_seen=$cli_seen$cli_name,
           if printenv "$cli_name" >/dev/null 2>&1; then set -- --env "$cli_name" "$@"; fi ;;
    esac
    case "$cli_names" in *,*) cli_names=${cli_names#*,} ;; *) break ;; esac
 done
# Docker's init forwards signals to the launcher's process group, including Java.
exec docker run --rm --interactive --init --env TINI_KILL_PROCESS_GROUP=1 "$@"
