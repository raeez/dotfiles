#export KEYTIMEOUT=1
#bindkey -v

#export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$HOME/bin:$PATH
export PATH=$PATH:/Library/TeX/texbin # TeX on El Capitan
export PATH=$PATH:$PROJ/bin           # custom scripts
export PATH=:/usr/local/bin:$PATH:/usr/local/bin:/usr/local
# TODO fix before and after

# http://tug.org/mactex/elcapitan.html
# http://people.ict.usc.edu/~leuski/cocoaspell/
export PROJ=$HOME/proj
export SYS=$PROJ/sys
export GS=$PROJ/sp17/sp17-gitscripts
export GG=$PROJ/mathematica/generalized-grassmannians
export M=$PROJ/mathematica/mirklecs
export B=$PROJ/mathematica/bridges
export T=$PROJ/mathematica/tex-mathematica/tutorials
export DOTFILES=$PROJ/sys/dotfiles
export WWW=/var/www/html # ubuntu 16 nginx default host dir
export ZSHRC=~/.zshrc
export VIMRC=~/.vimrc
export GITCONFIG=~/.gitconfig

# Path to your oh-my-zsh installation.
export ZSH=/Users/raeez/.oh-my-zsh
export TERM="xterm-256color"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
#ZSH_THEME="solarized-powerline"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

export MUTT_EMAIL_ADDRESS="raeez.lorgat@gmail.com"
export MUTT_REALNAME="Raeez Lorgat"
export MUTT_SMTP_URL="smtp://raeez.lorgat@smtp.gmail.com:587/"

# If you're using google apps put your full email address in the smtp url
# export MUTT_SMTP_URL="smtp://username@domain.com@smtp.gmail.com:587/"

#
# ZSH_POWERLINE_SHOW_IP=true
# ZSH_POWERLINE_SHOW_TIME=true
# ZSH_POWERLINE_SINGLE_LINE=false
# ZSH_POWERLINE_SHOW_BRANCH=true
# ZSH_POWERLINE_SHOW_RETURN_CODE=true
# ZSH_POWERLINE_SHOW_OS=false
# ZSH_POWERLINE_DIRECTORY_DEPTH=5
# ZSH_POWERLINE_SHOW_USER=true
# POWERLEVEL_9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# POWERLEVEL_9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
# # POWERLEVEL9K_MODE='awesome-patched'
# # POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%} "
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_OS_ICON_BACKGROUND="black"
# POWERLEVEL9K_OS_ICON_FOREGROUND="249"
# POWERLEVEL9K_TODO_BACKGROUND="black"
# POWERLEVEL9K_TODO_FOREGROUND="249"
# POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="249"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="249"
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="249"
# POWERLEVEL9K_STATUS_OK_BACKGROUND="black"
# POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
# POWERLEVEL9K_STATUS_ERROR_BACKGROUND="black"
# POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
# POWERLEVEL9K_NVM_BACKGROUND="black"
# POWERLEVEL9K_NVM_FOREGROUND="249"
# POWERLEVEL9K_NVM_VISUAL_IDENTIFIER_COLOR="green"
# POWERLEVEL9K_RVM_BACKGROUND="black"
# POWERLEVEL9K_RVM_FOREGROUND="249"
# POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
# POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
# POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
# POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
# POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="249"
# POWERLEVEL9K_LOAD_WARNING_FOREGROUND="249"
# POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="249"
# POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
# POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
# POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
# POWERLEVEL9K_RAM_BACKGROUND="black"
# POWERLEVEL9K_RAM_FOREGROUND="249"
# POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
# POWERLEVEL9K_BATTERY_LOW_BACKGROUND="black"
# POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="black"
# POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="black"
# POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="black"
# POWERLEVEL9K_BATTERY_LOW_FOREGROUND="249"
# POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="249"
# POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="249"
# POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="249"
# POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR="red"
# POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR="yellow"
# POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR="green"
# POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR="249"
# POWERLEVEL9K_TIME_BACKGROUND="black"
# POWERLEVEL9K_TIME_FOREGROUND="249"
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S} \UE12E"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('status' 'os_icon' 'todo' 'context' 'dir' 'vcs')
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('nvm' 'rvm' 'load' 'ram_joined' 'battery' 'time')

# POWERLEVEL9K_MODE='awesome-patched'
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_STATUS_VERBOSE=false
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon load context dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
# POWERLEVEL9K_SHOW_CHANGESET=true
# POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

# ln -s $PWD/solarized-powerline.zsh-theme ~/.oh-my-zsh/themes
# POWERLEVEL9K_MODE='compatible'

# POWERLEVEL9K_MODE='awesome-patched'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git bower sublime brew history node npm sudo web-search zsh-autosuggestions) #zsh-syntax-highlighting)
plugins=(git sublime brew history sudo web-search zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

## SSH specific config flags
# Preferred editor for local and remote sessions

## if [[ -n $SSH_CONNECTION ]]; then
##   export EDITOR='vim'
## else
##   export EDITOR='mvim'
## fi

## <c-z> switch back and forth between vim and zsh
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

## OSX application shortcuts
# TODO switch on os (fix sci-serv error)
# TODO split off os specific configuration via something analogous to
#       source "${ZDOTDIR:-${HOME}}/.zshrc-`uname`"

 case `uname` in
   Darwin)
    # commands for OS X go here
    alias appstore="open -a App\ Store.app"
    alias flux="open /Applications/Flux.app"
    alias fork="open /Applications/ForkLift.app"
    alias vim="mvim -v"
    alias kindle="open -a Kindle.app"
    alias cvim="rm -rf ~/.vim/backup && mkdir -p ~/.vim/backup"
    alias apps="open /Applications/"
    alias chrome="open /Applications/Google\ Chrome.app"
    alias dl="open ~/Downloads"
    alias tbot="open -a Tweetbot.app"
   ;;
   Linux)
     # commands for Linux go here
     export TERM="xterm-256color"
   ;;
   FreeBSD)
     # commands for FreeBSD go here
   ;;
 esac


#alias grep="`which grep` --color=always"
alias diff="colordiff"
alias ups="ssh root@sci-serv.raeez.com 'bash -s' < ~/proj/www/raeez.com/src/git-pull"
alias timeout="gtimeout"
alias athena="ssh -K raeez@athena.dialup.mit.edu"
# alias man='nocorrect man'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias mkdir='nocorrect mkdir'
alias gist='nocorrect gist'
alias heroku='nocorrect heroku'
alias ebuild='nocorrect ebuild'
alias hpodder='nocorrect hpodder'

alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'
alias gs="git status"
alias gc="git commit"
alias gb="git branch"
alias ga="git add"
alias gr="git grep -R"
alias ls="ls -G"
alias less="less -R"
#alias grep="egrep -cio --color=auto"
# alias egrep="egrep --color=always"
alias gr="egrep -iR . -n -e"
alias fi="find . -regex"
alias ack="ack --color"
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias httptunnel="ssh -fND 127.0.0.1:7991 raeez@linerva.mit.edu"
alias history="fc -l 1"
alias clang="clang -Wall"
alias oghc="ghc -fwarn-incomplete-patterns -Wall -Werror -fwarn-name-shadowing"

alias free="sudo du -sk ./* | sort -n | awk 'BEGIN{ pref[1]=\"K\"; pref[2]=\"M\"; pref[3]=\"G\";} { total = total + \$1; x = \$1; y = 1; while( x > 1024 ) { x = (x + 1023)/1024; y++; } printf(\"%g%s\t%s\n\",int(x*10)/10,pref[y],\$2); } END { y = 1; while( total > 1024 ) { total = (total + 1023)/1024; y++; } printf(\"Total: %g%s\n\",int(total*10)/10,pref[y]); }'"
alias pref="open -a System\ Preferences"
alias utorrent="open -a utorrent"
alias amethyst="open -a Amethyst"
alias dropbox="open -a Dropbox"
alias mkspindex="sudo mdutil -i on /"
##stop spotlight
#sudo mdutil -a -i off
##deactivate service and index
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
##reload server
#sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
## restart
#sudo mdutil -a -i on
#mdls /Applications/Safari.app | grep MDSystemFile
#sudo xattr -w com.apple.metadata:kMDItemSupportFileType "" /Applications/Safari.app
#sudo mdutil -a -i off
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
##reload spotlight server
#sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
alias skype="open -a Skype"
alias vlc="open -a VLC.app"
alias jackc="open -a /Applications/Jack/JackPilot.app"
alias pstree="pstree -w"

alias vmware="open -a /Applications/VMware\ Fusion.app"
alias xcode="open -a XCode.app"
alias pde="open -a Pd-extended.app"
alias omacs="open -a Aquamacs.app ~/.org/raeez.org"
alias amacs="open -a Aquamacs.app"
alias vico="open -a ~/Dropbox/Applications/Vico.app"

alias opdf="open -a /Applications/PDFEditorPro6.app"
alias md='mkdir -p'
alias rd=rmdir

alias d='dirs -v'
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevarS

# mostlike
alias man="TERMINFO=~/.terminfo/ LESS=C TERM=mostlike PAGER=less man"

