#!/bin/bash

# A simple script to maintain configuration files in one location.
# The original files remain in a single directory, and symbolic links are created
# in the directories that they are expected to be in.

# Choose where to establish symlinks (Home directory if no argument specified)
INSTALLDIR=${1:-$HOME}

if [[ $1 == "-h" ]] || [[ $1 == "--help" ]] || [[ $1 == "?" ]]; then
    echo "A simple script to maintain configuration files in one location.  The original files remain in a single directory, and symbolic links are created in the directories that they are expected to be in."
    exit 0
fi

# BASH
echo -n "Set up Bash configuration files? (y/n)"                    # Prompt user ("-n" option removes trailing endline character)
read -n 1 bash_config                                              # Read input from the user ("-n 1" option takes only the first character input)

if [[ $bash_config == "Y" ]] || [[ $bash_config == "y" ]]; then     # Allow user to choose which configurations they would like
    for i in .bashrc .bash_profile .bash_completion                 # More options may be added here in the future
    do
        mv $INSTALLDIR/$i $INSTALLDIR/$i.backup 2>/dev/null          # Create a backup of the exisiting config file
        ln -s $PWD/$i $INSTALLDIR/$i;                                           # Create a symlink to the new file
    done
fi


echo;
echo -n "Set up Z-Shell configuration files? (y/n)"
read -n 1 zsh_config

if [[ $zsh_config == "Y" ]] || [[ $zsh_config == "y" ]]; then 
    for i in .zshrc .z_profile .zsh_completion .oh-my-zsh
    do
        mv $INSTALLDIR/$i $INSTALLDIR/$i.backup 2>/dev/null
        ln -s $PWD/$i $INSTALLDIR/$i;
    done
fi


echo;
echo -n "Set up Vim configuration files? (y/n)"
read -n 1 vim_config

if [[ $vim_config == "Y" ]] || [[ $vim_config == "y" ]]; then 
    for i in .vimrc .vim _vimrc
    do
        mv $INSTALLDIR/$i $INSTALLDIR/$i.backup 2>/dev/null
        ln -s $PWD/$i $INSTALLDIR/$i;
    done
fi

echo;
echo "Process Complete"
echo "Any existing files were renamed to <file>.backup"
exit 0
