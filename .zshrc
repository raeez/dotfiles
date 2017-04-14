# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH
export PROJ=$HOME/proj

# Path to your oh-my-zsh installation.
export ZSH=/Users/raeez/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

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
plugins=(git bower sublime brew history node npm sudo web-search zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
alias ups="ssh root@sci-serv.raeez.com 'bash -s' < ~/proj/www/raeez.com/src/git-pull"
alias timeout="gtimeout"
alias athena="ssh -K raeez@athena.dialup.mit.edu"
alias man='nocorrect man'
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
alias grep="egrep --color=auto"
alias egrep="egrep --color=always"
alias gr="egrep -iR . -e"
alias fi="find . -regex"
alias ack="ack --color"
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias httptunnel="ssh -fND 127.0.0.1:7991 raeez@linerva.mit.edu"
alias history="fc -l 1"
alias clang="clang -Wall"
alias oghc="ghc -fwarn-incomplete-patterns -Wall -Werror -fwarn-name-shadowing"

alias free="sudo du -sk ./* | sort -n | awk 'BEGIN{ pref[1]=\"K\"; pref[2]=\"M\"; pref[3]=\"G\";} { total = total + \$1; x = \$1; y = 1; while( x > 1024 ) { x = (x + 1023)/1024; y++; } printf(\"%g%s\t%s\n\",int(x*10)/10,pref[y],\$2); } END { y = 1; while( total > 1024 ) { total = (total + 1023)/1024; y++; } printf(\"Total: %g%s\n\",int(total*10)/10,pref[y]); }'"
alias pref="open -a System\ Preferences"
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

alias md='mkdir -p'
alias rd=rmdir

alias d='dirs -v'
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevarS
