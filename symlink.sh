#!/bin/bash

# Directory where your dotfiles are located
DOTFILES_DIR=~/dotfiles

# Create symlinks for all files and folders in the dotfiles directory
for item in $DOTFILES_DIR/*; do
    # Extract the base name of the file/folder
    itemName=$(basename "$item")
    
    # Skip items you don't want to symlink, if any
    if [[ "$itemName" == "README.md" || "$itemName" == "setup.sh" ]]; then
        continue
    fi
    
    # Create a symlink in the home directory, force create/replace any existing files
    ln -sfn "$item" ~/"$itemName"
    echo "Symlinked $itemName to home directory."
done

