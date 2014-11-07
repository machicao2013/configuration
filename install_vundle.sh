#!/bin/sh

install_dir="/home/maxingsong/.vim/bundle/vundle"

test -d ${install_dir} || mkdir -p ${install_dir}

git clone https://github.com/gmarik/vundle.git ${install_dir}

vim +BundleInstall +qall

cd /home/maxingsong/.vim/bundle/YouCompleteMe

yum -y install cmake

./install.sh --clang-completer
