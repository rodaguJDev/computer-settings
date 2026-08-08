#!/usr/bin/env bash

# sudo editor fallback
EDITORS=(nvim vim nano)

for editor in $EDITORS; do
    if command -v "$editor" >/dev/null 2>&1; then
        export SUDO_EDITOR="$(command -v "$editor")"
        break
    fi
done

# fnm
if command -v fnm >/dev/null 2>&1; then
    eval "$(fnm env --use-on-cd)"
fi

# gpg
export GPG_TTY=$(tty)
