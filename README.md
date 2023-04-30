# scripts

My custom scripts to use on my desktop linux.

## usage
To use these these scripts, run ```bash import-scripts.sh```. This will create symbolic links to each of the scripts in ```~/bin```, but without file descriptors. Symbolic links are preferred, because one can edit the scripts in this git repository and use these changes immediately without any extra effort.

```sh
bash /foo/bar/scripts/my-script.sh
```

will be equal to

```sh
my-script
```

Make sure ```~/bin``` or your destination directory is in your $PATH. To add ```~/bin``` to $PATH, in ```~/.bashrc```, add

```sh
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
```

## overview

### import-scripts
Create symlinks in ```~/bin``` to ech .sh file in this repository without their file extensions.  
The destination directory may be specified in the first argument.  
usage: import-scripts \[DEST_DIR\]

### ex
extract all kinds of archives  
usage: ex \<archive\>
