# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# setting up path and env variables
eval "$(/opt/homebrew/bin/brew shellenv)"

## Setup for node
export PATH="/opt/homebrew/opt/node@12/bin:$PATH"

## Setup for GO
export GOPATH=$HOME/go-workspace
export GOROOT="/opt/homebrew/opt/go/libexec"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

## Setup for Java & Android
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v 11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'



export PATH=$PATH:~/Library/Android/sdk/platform-tools/

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0.1
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time anaconda root_indicator background_jobs)
POWERLEVEL9K_HIDE_BRANCH_ICON=true



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# aliases for Flipkart
alias of="cd /Users/adnaan.ahmed/Projects/flipkart"
alias rsnc="npm start -- --port 8899 --reset-cache"
alias cleanri="rm -rf node_modules/rome-models/ && npm i"
alias rext="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/work/build.sh"
alias ci="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/work/react_clean_install.sh"


# generic aliases
alias oo="cd /Users/adnaan.ahmed/Projects/open"
alias oml="cd /Users/adnaan.ahmed/Projects/machine_learning"
alias ogat="cd /Users/adnaan.ahmed/Projects/gatech; act ml"
alias cls="clear"
alias pls="sudo"
alias chrome='open -a "Google Chrome.app"'
alias snotify="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/personal/success_notify.sh"
alias fnotify="sh /Users/adnaan.ahmed/Projects/open/terminalConfig/scripts/personal/fail_notify.sh"
alias notify="snotify || fnotify"

# git aliases
alias gpln="git log --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset %C(dim white)- %an%C(reset)' --abbrev-commit --date=relative"
alias gpull="git rev-parse --abbrev-ref HEAD | xargs git pull origin"
alias gpush='git push -u origin "$(git_current_branch)" && notify'
alias gfpush='git push -f origin "$(git_current_branch)" && notify'
alias gbc="git branch | grep -v \"*\" | xargs git branch -D"
alias gbsc="git branch | grep -v \"*\" | xargs git branch -d"
alias gcam!="git commit -v -a --amend -m"
alias gscam="git commit -v -a --amend --no-edit"
alias gbu="gfa && git fetch origin master:master && grbm && gfpush"
alias gbuni="gfa && git fetch origin master:master && grbm && npm i && gfpush"

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
alias ni="npm install && notify"


# aliases for conda
alias act="source activate"
alias dact="source deactivate"
alias celist="conda env list"


# React editor
export REACT_EDITOR="code"

# Android related aliased
alias semulator="~/Library/Android/sdk/emulator/emulator -avd Pixel_4_API_30 -no-snapshot-load -netfast -dns-server 8.8.8.8"
alias avengers="./gradlew"

# fun
alias rickroll="curl -s -L http://bit.ly/10hA8iC | bash"


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
