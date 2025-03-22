
" #################### COLOR
" tmp list themes
" retrobox, zellner
colorscheme zaibatsu
" #################### endCOLOR

" #################### OPTIONS
set mouse=a  " enable mouse
set encoding=utf-8
set number
set relativenumber
set cursorline
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on

" for tabulation
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

" horizontal split open below and right
set splitbelow
set splitright

" add count matching
set shortmess-=S

" Netrw file explorer settings
let g:netrw_banner = 0 " hide banner above files
let g:netrw_liststyle = 3 " tree instead of plain view
let g:netrw_browse_split = 3 " vertical split window when Enter pressed on file

" #################### ENDOPTIONS

" #################### KEYMAP
nnoremap <space>, :nohlsearch<CR>
nnoremap <space>n :set relativenumber!<CR>
nnoremap <space>N :set number!<CR>
nnoremap <space>c :set ic!<CR>

" primary
noremap <Leader>y "*y
noremap <Leader>p "*p

" clipboard
noremap <space>Y "+y
noremap <space>P "+p

" resize when split window # for split V
nnoremap <space>s vertical resize +30<CR>
nnoremap <space>S vertical resize -30<CR>
" #################### ENDKEYMAP
