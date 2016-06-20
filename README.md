```
rm -rf .vim .vimrc

ln -s vim/.vim  ~/.vim

ln -s vim/.vimrc  ~/.vimrc

cd .vim
mkdir bundle
cd bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/terryma/vim-multiple-cursors.git

```
