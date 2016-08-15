**setp1:** Clone Vundle
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

**setp2:** Use vimrc
```
$ ln -s vimrc ~/.vimrc
```
or
```
$ cp vimrc ~/.vimrc
```

**setp3:** Install plugins

Use vim:
```
$ :PluginInstall
```
Use command line:
```
$ vim +PluginInstall +qall
```
