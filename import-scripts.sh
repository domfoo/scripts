#!/usr/bin/bash

# import-scripts - Create symlinks in ~/bin to all .sh files in this repository without their file extensions.
#                  The destination directory may be specified in the first argument
# usage: import-scripts [DEST_DIR]

pushd "$(dirname "$(readlink -f "$0")")" > /dev/null || exit

dest_dir=$(readlink -f "${1:-"$HOME/bin"}")

if [ ! -e "$dest_dir" ]; then
    echo "$dest_dir does not exist"
    exit
fi

if [ ! -d "$dest_dir" ]; then
    echo "$dest_dir is not a valid directory"
    exit
fi

for file in ./*.sh; do
    if [ -f "$file" ]; then
        abs_path="$(readlink -f "$file")"
        bname="$(basename "$file" ".sh")"
        ln -s "$abs_path" "$dest_dir/$bname"
    fi
done
