# Import slimzsh
source "$HOME/.slimzsh/slim.zsh"

export VISUAL="codium --wait"

export ANDROID_HOME=/opt/android-sdk
export ANDROID_SDK_ROOT=/opt/android-sdk
export JAVA_HOME=/usr/lib/jvm/default

# Aliases
alias dots="git --git-dir=$HOME/.dots.git/ --work-tree=$HOME"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

alias cdd="cd ~/dev"
alias cds="cd ~/studia"
alias scanimage="scanimage -d 'airscan:w0:HP Inc. HP Laser MFP 135w'"

# Keybindings

# Map ctrl+left/right to move by word if not already mapped
[[ $(builtin bindkey "^[[1;5C") == *" undefined-key" ]] && builtin bindkey "^[[1;5C" "forward-word" 
[[ $(builtin bindkey "^[[1;5D") == *" undefined-key" ]] && builtin bindkey "^[[1;5D" "backward-word" 

