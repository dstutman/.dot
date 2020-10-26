# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/.cargo/bin" ]]
then
    export PATH="$HOME/.local/bin:$HOME/.cargo/bin"
fi

# Setting vars
export EDITOR=nano
export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORM=wayland
export _JAVA_AWT_WM_NONREPARENTING=1

# User specific aliases and functions
alias ls='ls --almost-all --classify --width=1'
alias grep='rg'
