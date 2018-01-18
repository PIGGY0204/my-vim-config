#!/bin/bash

vim=~/.vim
vimB=${vim}~
autoload=${vim}/autoload
bundle=${vim}/bundle
vimrc=~/.vimrc
vimrcB=${vimrc}~

if [ -d ${vim} ]; then
    mv $vim $vimB
fi

if [ -f ${vimrc} ]; then
    mv $vimrc $vimrcB
fi

mkdir -p $autoload $bundle
curl -LSso ${autoload}/pathogen.vim https://tpo.pe/pathogen.vim

git clone git://github.com/jiangmiao/auto-pairs.git ${bundle}/auto-pairs

git clone https://github.com/scrooloose/nerdtree.git ${bundle}/nerdtree

mkdir -p ${bundle}/minibufexplorer/plugin
wget "http://www.vim.org/scripts/download_script.php?src_id=3640" -O ${bundle}/minibufexplorer/plugin/minibufexpl.vim

wget "http://www.vim.org/scripts/download_script.php?src_id=19574" -O ${bundle}/taglist.zip
unzip ${bundle}/taglist.zip -d ${bundle}/taglist
rm ${bundle}/taglist.zip

git clone https://github.com/ervandew/supertab.git ${bundle}/supertab
