" Specify a directory for plugins
" - For NeovimL stdpath('data') .. '/plugged'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tomasiser/vim-code-dark'
Plug 'HerringtonDarkholme/yats.vim'

call plug#end()

" basic vim settings
filetype plugin indent on
syntax on
let mapleader=","
set number
set relativenumber
set incsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set clipboard=unnamed

" deoplete settings
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" enable dark theme
colorscheme codedark

" Nerdcommenter nvim comment settings
let g:NERDSpaceDelims = 1

" -------------Standard Bindings---------------
inoremap jk <ESC>
noremap Y y$
nnoremap <C-t> :!touch<Space>
nnoremap <C-d> :!mkdir<Space>

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" navigate split panes easier
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-surround special bindings
vmap <leader>" S"lvi"
vmap <leader>' S'lvi'
vmap <leader>` S`lvi`
vmap <leader>( S)lvi(
vmap <leader>{ S}lvi{
vmap <leader>[ S]lvi[
vmap <leader>< S>lvi<

" ------------NERDTree settings------------
"
" open NERDTree on open file
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" open NERDTree upon starting vim with no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
