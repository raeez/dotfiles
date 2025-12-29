# =============================================================================
# POWERLEVEL10K INSTANT PROMPT (keep at top)
# =============================================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =============================================================================
# PATH
# =============================================================================
export PATH="$HOME/.cargo/bin:$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"
export PATH="$PATH:/Library/TeX/texbin"

# =============================================================================
# ENVIRONMENT
# =============================================================================
export EDITOR='vim'
export VISUAL='vim'
export LANG='en_US.UTF-8'

# Project shortcuts
export PROJ="$HOME/proj"
export DOTFILES="$PROJ/sys/dotfiles"

# Config shortcuts
export ZSHRC="$HOME/.zshrc"
export VIMRC="$HOME/.vimrc"

# =============================================================================
# OH-MY-ZSH
# =============================================================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  brew
  node
  npm
  sudo
  history
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# =============================================================================
# SHELL OPTIONS
# =============================================================================
setopt auto_cd
setopt multios
setopt cdable_vars
setopt no_beep
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history

HISTSIZE=50000
SAVEHIST=50000

# =============================================================================
# COLORS
# =============================================================================
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export CLICOLOR=1

# =============================================================================
# NAVIGATION
# =============================================================================
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias d='dirs -v'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'

# =============================================================================
# GIT
# =============================================================================
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gb='git branch'
alias gd='git diff'
alias gl='git log --oneline -20'
alias gp='git push'
alias gpu='git pull'

# =============================================================================
# FILES & SEARCH
# =============================================================================
alias ls='ls -G'
alias ll='ls -lah'
alias la='ls -la'
alias less='less -R'
alias grep='grep --color=auto'
alias gr='grep -riE'
alias md='mkdir -p'
alias rd='rmdir'

# Typo correction
alias mv='nocorrect mv'
alias mkdir='nocorrect mkdir'

# =============================================================================
# UTILITIES
# =============================================================================
alias webshare='python3 -m http.server'
alias reload='source ~/.zshrc'
alias pstree='pstree -w'

# =============================================================================
# MACOS
# =============================================================================
if [[ "$OSTYPE" == "darwin"* ]]; then
  alias apps='open /Applications/'
  alias down='open ~/Downloads'
  alias chrome='open -a "Google Chrome"'
  alias pref='open -a "System Settings"'
  alias vlc='open -a VLC'
  alias xcode='open -a Xcode'
  alias fork='open -a ForkLift'

  # Flush DNS
  alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
fi

# =============================================================================
# SSH
# =============================================================================
alias athena='ssh -K raeez@athena.dialup.mit.edu'

# =============================================================================
# FUNCTIONS
# =============================================================================
mkcd() { mkdir -p "$1" && cd "$1" }
ff() { find . -name "*$1*" }

extract() {
  if [[ -f "$1" ]]; then
    case "$1" in
      *.tar.bz2) tar xjf "$1" ;;
      *.tar.gz)  tar xzf "$1" ;;
      *.tar.xz)  tar xJf "$1" ;;
      *.bz2)     bunzip2 "$1" ;;
      *.gz)      gunzip "$1" ;;
      *.tar)     tar xf "$1" ;;
      *.tbz2)    tar xjf "$1" ;;
      *.tgz)     tar xzf "$1" ;;
      *.zip)     unzip "$1" ;;
      *.7z)      7z x "$1" ;;
      *)         echo "'$1' cannot be extracted" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# =============================================================================
# FZF
# =============================================================================
if command -v fzf &> /dev/null; then
  source <(fzf --zsh)
fi

# =============================================================================
# POWERLEVEL10K
# =============================================================================
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh