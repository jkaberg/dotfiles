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

mkdir -p ~/.config/powerline/themes/shell
mkdir -p ~/.config/powerline/colorschemes
pip install --user powerline-gitstatus
cat <<-'EOF' > ~/.config/powerline/config.json
{
    "ext": {
        "shell": {
            "theme": "default_leftonly"
        }
    }
}
EOF

cat <<-'EOF' > ~/.config/powerline/colorschemes/default.json
{
  "groups": {
    "gitstatus":                 { "fg": "gray8",           "bg": "gray2", "attrs": [] },
    "gitstatus_branch":          { "fg": "gray8",           "bg": "gray2", "attrs": [] },
    "gitstatus_branch_clean":    { "fg": "green",           "bg": "gray2", "attrs": [] },
    "gitstatus_branch_dirty":    { "fg": "gray8",           "bg": "gray2", "attrs": [] },
    "gitstatus_branch_detached": { "fg": "mediumpurple",    "bg": "gray2", "attrs": [] },
    "gitstatus_tag":             { "fg": "darkcyan",        "bg": "gray2", "attrs": [] },
    "gitstatus_behind":          { "fg": "gray10",          "bg": "gray2", "attrs": [] },
    "gitstatus_ahead":           { "fg": "gray10",          "bg": "gray2", "attrs": [] },
    "gitstatus_staged":          { "fg": "green",           "bg": "gray2", "attrs": [] },
    "gitstatus_unmerged":        { "fg": "brightred",       "bg": "gray2", "attrs": [] },
    "gitstatus_changed":         { "fg": "mediumorange",    "bg": "gray2", "attrs": [] },
    "gitstatus_untracked":       { "fg": "brightestorange", "bg": "gray2", "attrs": [] },
    "gitstatus_stashed":         { "fg": "darkblue",        "bg": "gray2", "attrs": [] },
    "gitstatus:divider":         { "fg": "gray8",           "bg": "gray2", "attrs": [] }
  }
}
EOF

cat <<-'EOF' > ~/.config/powerline/themes/shell/default.json
{
    "function": "powerline_gitstatus.gitstatus",
    "priority": 40
}
EOF

cat <<-'EOF' > ~/.config/powerline/themes/shell/__main__.json
"gitstatus": {
    "args": {
        "use_dash_c": false,
        "show_tag": true
    }
}
EOF

powerline-daemon --replace
