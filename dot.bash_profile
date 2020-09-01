# Some bug for bash_completion when working with zsh hence disbaled.
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
# fi

# added for go development
#export PATH=$PATH:/usr/local/go/bin

# added for JAVA jEnv and Android development
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH=$PATH:~/Library/Android/sdk/platform-tools/
alias jlist="/usr/libexec/java_home -V"

# aliases for Flipkart
alias of="cd /Users/adnaan.ahmed/Projects/flipkart"
alias rsnc="npm start -- --port 8899 --reset-cache"
alias cleanri="rm -rf node_modules/rome-models/ && npm i"
alias rext="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/work/build.sh"
alias ci="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/work/react_clean_install.sh"
alias og="cd /Users/adnaan.ahmed/Projects/flipkart/gaia"
alias opengaia="cd /Users/adnaan.ahmed/Projects/flipkart/gaia; wstorm /Users/adnaan.ahmed/Projects/flipkart/gaia"

# generic aliases
alias oo="cd /Users/adnaan.ahmed/Projects/open"
alias oml="cd /Users/adnaan.ahmed/Projects/machine_learning"
alias cls="clear"
alias pls="sudo"
alias chrome='open -a "Google Chrome.app"'
alias snotify="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/personal/success_notify.sh"
alias fnotify="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/personal/fail_notify.sh"
alias notify="snotify || fnotify"

# git aliases
alias gpl="git plog"
alias gpull="git rev-parse --abbrev-ref HEAD | xargs git pull origin"
alias gpush="git rev-parse --abbrev-ref HEAD | xargs git push origin"
alias gbc="git branch | grep -v \"*\" | xargs git branch -D"
alias gbsc="git branch | grep -v \"*\" | xargs git branch -d"

# npm aliases
alias ngi="sudo npm install -g "
alias nli="npm install "
alias nsi="npm install --save "
alias ndi="npm install --save-dev"
alias ngl="npm list -g --depth=0"
alias nll="npm list --depth=0"
alias ngu="sudo npm uninstall -g "
alias nlu="sudo npm uninstall "
alias nsu="sudo npm uninstall --save "
alias ndu="sudo npm uninstall --save-dev "


# aliases for conda
alias act="source activate"
alias dact="source deactivate"
alias celist="conda env list"

# added by Miniconda3 installer
export PATH="/Users/adnaan.ahmed/miniconda3/bin:$PATH"

# React editor
export REACT_EDITOR="code"

# Stop MacAfee
alias peace="sudo sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/personal/peace.sh"

# Android related aliased
alias semulator="~/Library/Android/sdk/emulator/emulator -avd Pixel_3a_API_28 -no-snapshot-load -netfast -dns-server 8.8.8.8"
alias avengers="./gradlew"

# fun
alias rickroll="curl -s -L http://bit.ly/10hA8iC | bash"

