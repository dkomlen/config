Copy configs:
```
cp .bashrc ~/
cp .vimrc ~/
cp .git-prompt.sh ~/
```

Configure vim:
```
cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
  :PluginInstall
```

Nord theme:
- https://www.nordtheme.com

Git use keychain:
- In `~/.ssh/config` add
```
Host *
    UseKeychain yes
```
