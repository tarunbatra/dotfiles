set number
set shiftwidth=4

syntax enable
set background=dark
colorscheme distinguished

set showmatch "parenthesis
set autoread

filetype plugin indent on

set nobackup
set nowb
set noswapfile


set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set ai "auto indent
set si "smart indent
set wrap "wrap

set ignorecase
set smartcase
set hlsearch
set incsearch


set history=1000
set undolevels=1000
set title "change terminal title
set visualbell "dont beep
set noerrorbells "dont beep

set showcmd "show cmd
set cursorline "highlight current line

set wildmenu "visual autocomplete menu

set lazyredraw

let mapleader=','

" Remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

cmap w!! w !sudo tee > /dev/null %
map <Leader>n :enew<CR>
map <Leader>o :bprevious<CR>
map <Leader>p :bNext<CR>
map <leader>q :bp <BAR> bd #<CR>
map <leader>bl :ls<CR>

map <C-a> :close<CR>

map <C-Up> :tabnew<CR>
map <C-Down> :tabclose<CR>
map <C-Left> :tabprevious<CR>
map <C-Right> :tabNext<CR>
"------------- vim-plug -------------

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

call plug#end()

"--------- plugin config ---------

"NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
