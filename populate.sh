#!/bin/bash

echo "> Removing existing ~/.bashrc ...";
cp ~/.bashrc ~/.dotfiles/removed &&
rm ~/.bashrc;
if [ $? -eq 0 ]; then
    echo "> Successfully removed existing ~/.bashrc";
else 
    echo "> Failed removing existing ~/.bashrc";
    echo "  Does symboling link already exist?";
echo "> Populating ~/.bashrc"
ln -s ~/.dotfiles/.bashrc ~/.bashrc;
