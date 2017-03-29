" enter the current era
set nocompatible

set encoding=utf-8

" enable plugins (for netrw)
filetype plugin on

" provides tab-completion for all file-related stuff
set path+=** " search through every subdir of every subdir

" display all matching files
set wildmenu

" SNIPPETS:
" HTML template
nnoremap ,html :-1read $HOME/Templates/skeleton.html<CR>3jwf>a
nnoremap ,py :-1read $HOME/Templates/skeleton.py<CR>7ji<Tab>
nnoremap ,cpp :-1read $HOME/Templates/skeleton.cpp<CR>5ji<Tab>

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
call plug#end()

" Appearance
let g:airline_theme='cool'
syntax enable

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" column 80 enforcement
highlight ColorColumn ctermbg=gray
call matchadd('ColorColumn', '\%81v', 100)


let g:netrw_banner=0        " disable banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
" hide gitignore'd files
let g:netrw_list_hide=netrw_gitignore#Hide()
" hide dotfiles by default (this is the string toggled by netrw-gh)
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Hybrid numberline
set number
set relativenumber

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent plugin on
