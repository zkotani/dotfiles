# dotfiles

my personal configuration files, etc.

## neofetch
### updated binary to fix an issue with color blocks not displaying correctly

- place the neofetch directory in `~/.config/`
    - folder structure should be: `~/.config/neofetch/config.conf`
- install neofetch by copying `bin/neofetch` somewhere in your PATH
    - i copy it to `/usr/bin`

## .bashrc, .vimrc

place these files in ~/

### for .vimrc:

- install vim plug to handle plugins with:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## dconf

- `klownox.dconf` is a personal terminal theme for the gnome terminal
    - based on the traditional linux terminal colours, but makes colours softer and less contrasting
- load theme using: `dconf load /org/gnome/terminal/legacy/profiles:/ < klownox.dconf`
