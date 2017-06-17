#!/bin/bash

# Link files and dirs
files=(".bash_include" ".bashrc" "bin" ".gitconfig" ".tmux.conf" ".vimrc")
for f in "${files[@]}"
do
    :
    path="$PWD/$f"
    rm -rf "$HOME/$f"

    if [[ -d "$path" ]]; then
        ln -s "$path" "$HOME"
    else
        ln "$path" "$HOME/$f"
    fi
done

# Powerline install
pip install --user git+git://github.com/powerline/powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
