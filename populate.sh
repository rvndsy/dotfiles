#!/bin/bash
# DEPENDENCIES:
# - tee

# Location of .dotfiles and other necessities within
ROOTDIR="$HOME/.dotfiles";
LOGDIR="$ROOTDIR/log";
RMDIR="$ROOTDIR/removed";

# Actual dotfile system and repo directory locations go here
BASHRC="~/.bashrc";
DOTBASHRC="$ROOTDIR/.bashrc";

# Datetime for logging purposes
DATE=$(date +%Y-%m-%d-%H-%M-%S-%N);

# Start logging
LOG="$LOGDIR/populate-$DATE";
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>$LOG 2>&1
touch $LOG;

## Populating .bashrc
echo "$BASHRC > Removing existing ...";
cp $BASHRC $RMDIR && rm $BASHRC;
if [ $? -eq 0 ]; then
    echo "$BASHRC > Successfully removed existing ";
else 
    echo "$BASHRC > Failed removing existing";
    echo "$BASHRC >> Does symboling link already exist? Did you remove the file?";
fi

echo "$BASHRC > Distributing dotfile...";
ln -s $DOTBASHRC $BASHRC;
if [ $? -eq 0 ]; then
    echo "$BASHRC > Successfully populated";
else 
    echo "$BASHRC > Failed to populate";
fi

