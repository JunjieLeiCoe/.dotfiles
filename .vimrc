syntax on
" set cul
set tabstop=2
set rnu
set shiftwidth=2
set expandtab
set ai
" set number
set hlsearch
set ruler
highlight Comment ctermfg=green
set clipboard=unnamed

"-------RE-mapping keys -------
nnoremap <silent> ,<space> :nohlsearch<CR>

" run python files
nnoremap <silent> ,py :!clear && python3 %<CR>

" run R  file
nnoremap <silent> ,rr :!clear && Rscript %<CR>

"-------FDM--LOADVIEW----------
" When leave auto mkview
autocmd BufWinLeave *.* mkview

" When enter auto loadview
autocmd BufWinEnter *.* silent loadview





call plug#begin('~/.vim/plugged')
" Created by 'jaingmiao' to auto-close brackets 
Plug 'jiangmiao/auto-pairs'

" Vim autocompletion setting; -- this seems to be not very good
" Plug 'vim-scripts/AutoComplPop'

" tpope -- Commentary -- gcc
Plug 'tpope/vim-commentary'
