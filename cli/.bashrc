# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/.cargo/bin:$HOME/bin" ]]
then
    PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/bin:$PATH"
fi
export PATH
export GTK_THEME=Adwaita:dark

export EDITOR=nano
# User specific aliases and functions
alias ls='ls --color=auto -a'
