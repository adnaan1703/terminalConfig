# Some bug for bash_completion when working with zsh hence disbaled.
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
# fi


# added for JAVA and Android development
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:~/Library/Android/sdk/platform-tools/

# aliases for Flipkart
alias of="cd /Users/adnaan.ahmed/Projects/flipkart"
alias rsnc="npm start -- --port 8899 --reset-cache"
alias cleanri="rm -rf node_modules/rome-models/ && npm i"
alias rext="sh /Users/adnaan.ahmed/Desktop/work/scripts/build.sh"
alias deploy="sh /Users/adnaan.ahmed/Projects/flipkart/ts-rex/scripts/aergia/deploy.sh"
alias release="sh /Users/adnaan.ahmed/Projects/flipkart/ts-rex/scripts/aergia/release.sh"

# aliases for node
alias cleani="rm -rf node_modules/ && npm i"

# generic aliases
alias oc="cd /Users/adnaan.ahmed/Projects/crocStack"
alias cls="clear"

# aliases for conda
alias act="source activate"
alias dact="source deactivate"
alias celist="conda env list"

# added by Miniconda3 installer
export PATH="/Users/adnaan.ahmed/miniconda3/bin:$PATH"
