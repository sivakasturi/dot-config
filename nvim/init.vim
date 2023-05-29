let mapleader = ' '

" ----------Basics----------
set nocompatible
filetype off
filetype plugin indent on
syntax on
set laststatus=2

" ----------Appearance----------
set number relativenumber
set encoding=utf-8
set wrap
set splitbelow splitright
"set colorcolumn=80

" ----------Tabs----------
set tabstop=4
set shiftwidth=4
set expandtab

set mouse=a
set backspace=indent,eol,start
set showmode
set showcmd

" ----------Search----------
set hlsearch
set incsearch
set ignorecase
set smartcase

" ----------Source if the file exists----------
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
"
"" ----------Source additional files----------
call SourceIfExists('$HOME/.config/nvim/bindings.vim')
call SourceIfExists('$HOME/.config/nvim/pluginstalls.vim')
call SourceIfExists('$HOME/.config/nvim/cocinit.vim')
