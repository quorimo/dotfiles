" https://github.com/nanotech/jellybeans.vim

""---vim-plug---""
" https://github.com/junegunn/vim-plug <-- Instructions
call plug#begin()

Plug 'https://github.com/stevearc/vim-arduino.git' 
Plug 'https://github.com/vimwiki/vimwiki.git'
Plug 'rbong/vim-crystalline'

call plug#end()
""-----end------""

syntax on
" set termguicolors
colorscheme jellybeans

set number
set ruler 
set hlsearch 
set nocompatible

set t_Co=256

set ai 
set tabstop=2
set shiftwidth=2
set expandtab

set backspace=2

highlight Comment ctermfg=LightMagenta

set nobackup
set noswapfile
set nowritebackup
set noundofile

set mouse=r
set nowrap
set belloff=all
set laststatus=2
set clipboard=unnamed
"set noshowmode

inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

autocmd BufNewFile *.cpp 0r ~/.vim/templates/cp_template.cpp

function! StatusLine(...)
  return '%#Crystalline# %f%h%w%m%r %#CrystallineFill#'
        \ . '%=%#Crystalline# %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
endfunction
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_theme = 'dracula'
set laststatus=2
