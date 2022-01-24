syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set wrap
set smartcase
set noswapfile
set nobackup
set encoding=utf-8
set incsearch
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:hot_reload_on_save=1

highlight Pmenu ctermbg=gray guibg=gray

augroup autoindent
	au!
	autocmd BufWritePre * :normal migg=G`i
augroup End

autocmd filetype python3 nnoremap <F5> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc-11 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++-11 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

"set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '907th/vim-auto-save'
Plug 'aben20807/vim-runner'
Plug 'shmup/vim-sql-syntax'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'


call plug#end()

