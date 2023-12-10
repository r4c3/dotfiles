## dotfiles
This repository contains the dotfiles for my personal Fedora 39 devenv.

![screenshot](https://i.imgur.com/7LzuBV0.png)

## Contents

- `.wezterm.lua`: custom WezTerm config.
- `.config/nvim/`: NvChad-based NeoVim config.

## Setup

These dotfiles are managed using a bare Git repository, allowing the configuration files to be directly tracked at their required locations in the home directory.

### Cloning and Installation

To clone and apply these dotfiles on a new system:

```bash
git clone --bare https://github.com/r4c3/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
