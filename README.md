```
rm -rf .vim .vimrc

ln -s vim_config/.vim  ~/.vim

ln -s vim_config/.vimrc  ~/.vimrc

cd .vim
mkdir bundle
cd bundle
git clone https://github.com/scrooloose/nerdtree.git
```
