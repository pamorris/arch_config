#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lhG'
alias la='ls -lahG'
alias df='df -h'

#PS1='[\u@\h \W]\$ '
export PS1="\[\033[38;5;160m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;33m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;11m\]\W\[$(tput sgr0)\] ➔ \[$(tput sgr0)\]"

export ALSA_CARD=Generic
export MOZ_ENABLE_WAYLAND=1

export PATH=/home/paul/.local/bin:$PATH

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
