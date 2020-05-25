" Specify a directory for plugins
" - For NeovimL stdpath('data') .. '/plugged'
call plug#begin('$LOCALAPPDATA/nvim')
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
else
	Plug 'Shuogo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mattn/emmet-vim'
Plug 'dracula/vim',{'as':'dracula'}

call plug#end()

" Enable dracula color scheme
colorscheme dracula

let g:python3_host_prog = 'C:\Users\Joshu\AppData\Local\Programs\Python\Python38\python.exe'

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

" nvim split window keys
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Open current directory
nmap te :tabedit

" EMMET config
let g:user_emmet_leader_key=','

" deoplete settings
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Nerdcommenter nvim comment settings
let g:NERDSpaceDelims = 1

" -------------Standard Bindings---------------
inoremap jk <ESC>
noremap Y y$
nnoremap <C-t> :!touch<Space>
nnoremap <C-d> :!mkdir<Space>
" navigate split panes easier
" use :sp filename to split pane
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

