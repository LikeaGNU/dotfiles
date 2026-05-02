syntax on
set wrap
set relativenumber
set number
set hlsearch
set autoindent
set expandtab
set smartcase
set ignorecase
set smartindent
set cindent
set cursorline
set ttyfast
set tabstop=2
set shiftwidth=2
set softtabstop=2
set laststatus=2
set foldmethod=manual
let mapleader = "\<SPACE>"

map <leader>bl :buffers<CR>
map <leader>bn :bnext<CR>
map <leader>bp :bprev<CR>
map <leader>tn :tabnew<CR>

if exists('g:plugs["$nerdtree"]')
  map <leader>nd :NERDTreeToggle<CR>
endif

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'vimwiki/vimwiki'
call plug#end()
