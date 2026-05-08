#!/bin/bash

set -e

link() {
    local SRC="$1"
    local DST="$2"

    if [ -e "$DST" ] || [ -L "$DST" ]; then
        echo "Removing $DST"
        rm -rf "$DST"
    fi

    echo "$SRC" "$DST"
    

    ln -s "$SRC" "$DST"
}

mkdir -p ~/.local/share/fonts/
cp ./fonts/SFMonoNerdFontMono-SemiBold.otf ~/.local/share/fonts/
fc-cache

link "$HOME/dotfiles/.config" "$HOME/.config"
link "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"
link "$HOME/dotfiles/.xinitrc" "$HOME/.xinitrc"
