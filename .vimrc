syntax on
" set cul
" set tabstop=2
" set rnu
set nornu
set shiftwidth=2
set expandtab
set ai
"set number
set hlsearch
set ruler
highlight Comment ctermfg=green
set clipboard=unnamedplus

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l 

"-------RE-mapping keys -------
nnoremap <silent> ,<space> :nohlsearch<CR>

" run python files
nnoremap <silent> ,py :!clear && python3 %<CR>

" run R  file
nnoremap <silent> ,rr :!clear && Rscript %<CR>

nmap <C-f> :NERDTreeToggle<CR>


"-------FDM--LOADVIEW----------
" When leave auto mkview
autocmd BufWinLeave *.* mkview

" When enter auto loadview
autocmd BufWinEnter *.* silent loadview

" vim-autoformat
let g:autoformat_verbosemode=1 "开启详细模式便于查错
autocmd BufWrite *.sql,*.c,*.py,*.java,*.js, :Autoformat "设置发生保存事件时执行格式化

"let g:autoformat_autoindent = 0
"let g:autoformat_retab = 0
"let g:autoformat_remove_trailing_spaces = 0
"autocmd FileType vim,tex let b:autoformat_autoindent=0
"gg=G :retab :RemoveTrailingSpaces

let g:formatter_yapf_style='black'

let g:pydocstring_formatter = 'numpy'

let g:tagbar_ctags_bin = '/bin/ctags' 
nmap <F8> : TagbarToggle<CR> 

" This line of code resizes the window
nnoremap <silent> <c-Up> :resize -1<CR>
nnoremap <silent> <c-Down> :resize +1<CR>
nnoremap <silent> <c-left> :vertical resize -1<CR>
nnoremap <silent> <c-right> :vertical resize +1<CR>

call plug#begin('~/.vim/plugged')

" Created by 'jaingmiao' to auto-close brackets 
Plug 'jiangmiao/auto-pairs'

" Vim autocompletion setting; -- this seems to be not very good
" Plug 'vim-scripts/AutoComplPop'

" tpope -- Commentary -- gcc
Plug 'tpope/vim-commentary'

Plug 'wakatime/vim-wakatime'

Plug 'scrooloose/nerdtree'

Plug 'Chiel92/vim-autoformat'

Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

Plug 'majutsushi/tagbar'

call plug#end()
