# dotfiles

personal configuration files, etc.

## neofetch

place this folder in ~/.config
install neofetch with `sudo apt install -y neofetch`

## .bashrc, .vimrc

place these files in ~/

### for .vimrc:

1. install vim plug to handle plugins with:

```curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```

2. then, `vim ~/.vimrc` & enter `:PlugInstall`

3. for YouCompleteMe to work:

`sudo apt install -y golang npm openjdk-20-jre`
`cd .vim/plugged/YouCompleteMe/ && python3 install.py --all`

