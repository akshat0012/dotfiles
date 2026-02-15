#!/bin/bash

set -e

link() {
    local SRC="$1"
    local DST="$2"

    echo "$SRC" "$DST"
    
    if [ -e "$DST" ] || [ -L "$DST" ]; then
        echo "Removing $DST"
        rm -rf "$DST"
    fi

    ln -s "$SRC" "$DST"

}

link "$HOME/dotfiles/.config" "$HOME/.config"
link "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"
link "$HOME/dotfiles/.xinitrc" "$HOME/.xinitrc"
