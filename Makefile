init:
	git clone https://github.com/VundleVim/Vundle.vim.git $(HOME)/.vim/bundle/Vundle.vim
	ln -nsiF $(PWD)/vimrc $(HOME)/.vimrc
	vim +PluginInstall +qall
update:
	git pull
	vim +BundleInstall! +BundleClean +q

