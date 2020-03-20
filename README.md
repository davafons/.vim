# .vim
Personal vim/nvim configuration for Linux

## Install

For __vim__:
```sh
$ echo "source ~/.vim/init.vim" > ~/.vimrc
```
For __nvim__:
```sh
$ echo -e "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath = &runtimepath\nsource ~/.vim/init.vim" > ~/.config/nvim/init.vim
```
Then, run:
```sh
$ vim +PlugClean! +PlugUpdate +qall
```

## License

[MIT](LICENSE)
