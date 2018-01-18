execute pathogen#infect()
syntax on
filetype plugin indent on

set shiftwidth=4             " 缩进4个空格
set nu                       " 显示行号
set pastetoggle=<F10>        " F10切换粘贴插入模式

" taglist
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=1 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序

" miniBuf
let g:miniBufExplMaxSize=2   " minibufexplorer窗口最大高度为2行

nmap <C-n> :NERDTree<CR>
nmap <C-t> :TlistToggle<CR>
nmap <s-n> :set nu!<CR>

" 窗口切换
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
