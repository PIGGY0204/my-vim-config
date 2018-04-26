#!/bin/bash

#you have to install git and ctags already, before you running this script

vim=~/.vim
vimB=${vim}~
autoload=${vim}/autoload
bundle=${vim}/bundle
vimrc=~/.vimrc
vimrcB=${vimrc}~
DIR=`dirname $0`

#backups ~/.vim and ~/.vimrc
if [ -d ${vim} ]; then
    mv $vim $vimB
fi

if [ -f ${vimrc} ]; then
    mv $vimrc $vimrcB
fi

#install pathogen
mkdir -p $autoload $bundle
curl -LSso ${autoload}/pathogen.vim https://tpo.pe/pathogen.vim

#install auto-pairs
git clone git://github.com/jiangmiao/auto-pairs.git ${bundle}/auto-pairs

#install nerdTree
git clone https://github.com/scrooloose/nerdtree.git ${bundle}/nerdtree

#install minibufexplorer
mkdir -p ${bundle}/minibufexplorer/plugin
wget "http://www.vim.org/scripts/download_script.php?src_id=3640" -O ${bundle}/minibufexplorer/plugin/minibufexpl.vim

#install taglist
wget "http://www.vim.org/scripts/download_script.php?src_id=19574" -O ${bundle}/taglist.zip
unzip ${bundle}/taglist.zip -d ${bundle}/taglist
rm ${bundle}/taglist.zip

#install supertab
git clone https://github.com/ervandew/supertab.git ${bundle}/supertab

#copy .vimrc to home directory
cp ${DIR}/.vimrc ~/
