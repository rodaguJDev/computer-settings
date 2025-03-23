alias up="sudo nala update && sudo nala upgrade -y && sudo nala autopurge -y && sudo nala list --upgradable"
alias ls="ls --color=tty -a"
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias del="gio trash"

# flutter
export PATH="/home/rodaguj/.config/herd-lite/bin:/home/rodaguj/.local/share/Flutter/flutter/bin:$PATH"
export PATH="$PATH:$HOME/.pub-cache/bin"
# php
export PATH="/home/rodaguj/.config/herd-lite/bin:/home/rodaguj/.local/share/Flutter/flutter/bin:$PATH"
# react-native
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Stupid php.new install I accidentally made
export PHP_INI_SCAN_DIR="/home/rodaguj/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
