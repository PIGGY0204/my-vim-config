mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

mkdir -p ~/.vim/bundle/minibufexplorer/plugin && \
wget "http://www.vim.org/scripts/download_script.php?src_id=3640" -O ~/.vim/bundle/minibufexplorer/plugin/minibufexpl.vim

wget "http://www.vim.org/scripts/download_script.php?src_id=19574" -O ~/.vim/bundle/taglist.zip && \
unzip ~/.vim/bundle/taglist.zip -d ~/.vim/bundle/taglist && rm ~/.vim/bundle/taglist.zip

git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab

cp .vimrc ~/
