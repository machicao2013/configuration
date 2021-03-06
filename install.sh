#!/bin/bash

base_dir=`pwd`
vim_install_dir=/home/riyuexingchen/opt/vim74a

test -d ${vim_install_dir} || mkdir -p ${vim_install_dir}

test -d ~/.vim/bundle/vundle || mkdir -p ~/.vim/bundle/vundle

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

if [[! -f ./vim-7.4a.tar.bz2 ]]; then
	wget ftp://ftp.vim.org/pub/vim/unstable/unix/vim-7.4a.tar.bz2
fi

if [[! -f ./vim-7.4a.tar.bz2 ]]; then
	echo "./vim-7.4a.tar.bz2 does not exists"
	exit 1
fi

tar jxvf ./vim-7.4a.tar.bz2

cd  ./vim74a

./configure --with-features=huge --enable-perlinterp --enable-pythoninterp --enable-rubyinterp --enable-cscope --enable-multibyte --disable-gui --prefix=${vim_install_dir}

VIMRUNTIMEDIR=${vim_install_dir}

make VIMRUNTIMEDIR=${VIMRUNTIMEDIR}

make install

cp -rf runtime/* ${vim_install_dir}/

echo "export PATH=${vim_install_dir}/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

# install vundle
install_dir="/home/riyuexingchen/.vim/bundle/vundle"

test -d ${install_dir} || mkdir -p ${install_dir}

git clone https://github.com/gmarik/vundle.git ${install_dir}

cd ${base_dir}
cat ./vimrc.new >> ~/.vimrc

vim +BundleInstall +qall

cd ~/.vim/bundle/YouCompleteMe

git submodule update --init --recursive

./install.sh --clang-completer
