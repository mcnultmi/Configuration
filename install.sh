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

# Prompt user ("-n" option removes trailing endline character)
echo -n "Set up Bash configuration files? [N/y]"
# Read input from the user ("-n 1" option takes only the first character input)
read -n 1 bash_config

# More options may be added here in the future
if [[ $bash_config == "Y" ]] || [[ $bash_config == "y" ]]; then
    for i in .profile .bashrc .bash_profile .bash_completion
    do
	if [[ -d $INSTALLDIR/$i ]] || [[ -f $INSTALLDIR/$i ]]; then
		# Create a backup of the exisiting config file
		mv $INSTALLDIR/$i $INSTALLDIR/$i.backup 2>/dev/null
	fi
	# Create a symlink to the new file
	ln -s $PWD/$i $INSTALLDIR/$i 2>/dev/null
    done
fi


echo
echo -n "Set up Z-Shell configuration files? [N/y]"
read -n 1 zsh_config

if [[ $zsh_config == "Y" ]] || [[ $zsh_config == "y" ]]; then 
    for i in .zshrc .z_profile .zsh_completion #.oh-my-zsh  # Problem with .oh-my-zsh
    do
	if [[ -d $INSTALLDIR/$i ]] || [[ -f $INSTALLDIR/$i ]]; then
		mv $INSTALLDIR/$i $INSTALLDIR/$i.backup 2>/dev/null
	fi
	ln -s $PWD/$i $INSTALLDIR/$i 2>/dev/null
    done
fi


echo
echo -n "Set up Vim configuration files? [N/y]"
read -n 1 vim_config

if [[ $vim_config == "Y" ]] || [[ $vim_config == "y" ]]; then 
    for i in .vimrc .vrapperrc .vim
    do
	if [[ -d $INSTALLDIR/$i ]] || [[ -f $INSTALLDIR/$i ]]; then
		mv $INSTALLDIR/$i $INSTALLDIR/$i.backup 2>/dev/null
	fi
	ln -s $PWD/$i $INSTALLDIR/$i 2>/dev/null
    done
fi

echo
echo -n "Set up i3 and X configuration files? [N/y]"
read -n 1 x_config

if [[ $x_config == "Y" ]] || [[ $x_config == "y" ]]; then 
    for i in .Xresources .xinitrc
    do
	if [[ -d $INSTALLDIR/$i ]] || [[ -f $INSTALLDIR/$i ]]; then
		mv $INSTALLDIR/$i $INSTALLDIR/$i.backup
	fi
	ln -s $PWD/$i $INSTALLDIR/$i 2>/dev/null
    done
    if [[ -f $INSTALLDIR/.config/i3/config ]]; then
	    mv $INSTALLDIR/.config/i3/config $INSTALLDIR/.config/i3/config.backup 2>/dev/null
    fi
    ln -s $PWD/.config/i3/config $INSTALLDIR/.config/i3/config 2>/dev/null
fi
echo
echo
echo "Process Complete"
echo "Any previously existing files were renamed to <file>.backup"
exit 0
