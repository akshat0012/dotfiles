#!/bin/bash

set -e

# Importing packages from packages.txt
mapfile -t PKGS < packages.txt

# Installing packages 
sudo pacman -S --noconfirm "${PKGS[@]}"
