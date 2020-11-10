# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/.cargo/bin" ]]
then
    export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
fi

# Setting vars
export EDITOR=vim

# User specific aliases and functions
alias ls='ls --classify --color=auto' # --almost-all
alias grep='rg'
