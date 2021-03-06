# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# User specific Softwares
if [ -f "${HOME}/.bash_softwares" ]; then
        . ${HOME}/.bash_softwares
fi

# User specific directories
if [ -f "${HOME}/.bash_dirs" ]; then
        . ${HOME}/.bash_dirs
fi

echo "TERM: $TERM $STY"
