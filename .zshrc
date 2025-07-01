if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(sheldon source)"

export GPG_TTY=$(tty)

export VISUAL="zeditor"

export JAVA_HOME=/usr/lib/jvm/default

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

# GTK
export ADW_DISABLE_PORTAL=1
export GTK_THEME=Arc-Dark

# PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

# Aliases

alias cdd="cd ~/dev"
alias cds="cd ~/studia"

alias scanimage="scanimage -d 'airscan:w0:HP Inc. HP Laser MFP 135w'"

# UTILITY

alias less='less -R'
alias ls="ls --color=auto"
alias grep='grep --color=auto'
alias ..='cd ../'
alias dots="git --git-dir=$HOME/.dots.git/ --work-tree=$HOME"

# Git

alias gd='git diff'
alias gco='git checkout'
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gpp='git pull; git push'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

# Keybindings

# Map ctrl+left/right to move by word if not already mapped
[[ $(builtin bindkey "^[[1;5C") == *" undefined-key" ]] && builtin bindkey "^[[1;5C" "forward-word" 
[[ $(builtin bindkey "^[[1;5D") == *" undefined-key" ]] && builtin bindkey "^[[1;5D" "backward-word" 

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
