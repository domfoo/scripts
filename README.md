# scripts

My custom scripts to use on my desktop linux.

## usage
To use these these scripts, run ```bash add-scripts.sh```. This will create symbolic links to each of the scripts in ```~/bin```, but without file descriptors. Symbolic links are preferred, because one can edit the scripts in this git repository and use these changes without any extra effort.

```sh
bash /path/to/repo/my-script.sh
```

will be equal to

```sh
my-script
```

Make sure ```~/bin``` is in your $PATH. To add it to $PATH, in ```~/.bashrc```, add

```sh
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
```

## overview

### add-scripts
create symbolic links to every script in this repo in ```~/bin```

