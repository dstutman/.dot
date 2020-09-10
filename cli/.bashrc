# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/.cargo/bin:$HOME/bin" ]]
then
    export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/bin:$PATH"
fi

# Prompt
export PS1='\[\e[0;1m\][\[\e[0;1m\]\h\[\e[m\] \[\e[0;1m\]\w\[\e[0;1m\]]\[\e[0;91m\]:\[\e[m\] \[\e0'

# Setting vars
export EDITOR=vim
export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORM=wayland
export _JAVA_AWT_WM_NONREPARENTING=1

# User specific aliases and functions
alias ls='ls --almost-all --classify --width=1'
alias grep='rg'
