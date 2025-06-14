#!/bin/bash

hyprdir=~/.config/hypr
waybardir=/etc/xdg/waybar
nvimdir=~/.config/nvim
kittydir=~/.config/kitty
wofidir=~/.config/wofi

# hypr
mkdir -p ${PWD}/../config/hypr
mkdir -p ${hyprdir}
sudo mount --bind ${hyprdir} ${PWD}/../config/hypr

# waybar
mkdir -p ${waybardir}
mkdir -p ${PWD}/../config/waybar
sudo mount --bind ${waybardir} ${PWD}/../config/waybar

# nvim
mkdir -p ${PWD}/../config/nvim
mkdir -p ${nvimdir}
sudo mount --bind ${nvimdir} ${PWD}/../config/nvim

# kitty
mkdir -p ${PWD}/../config/kitty
mkdir -p ${kittydir}
sudo mount --bind ${kittydir} ${PWD}/../config/kitty

# wofi
mkdir -p ${PWD}/../config/wofi
mkdir -p ${wofidir}
sudo mount --bind ${wofidir} ${PWD}/../config/wofi
