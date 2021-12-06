set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set relativenumber
set laststatus=2
set background=dark
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

call plug#begin('~/.vim/plugged')
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions needed

Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
call plug#end()

set t_Co=256
set t_ut=
colorscheme codedark

let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
let g:DevIconsEnableFoldersOpenClose = 1


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_powerline_fonts = 1

let g:gruvbox_contrast_dark = "hard"
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-i> :PlugInstall<CR>
nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
inoremap <A-Up> <Esc>:m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>
