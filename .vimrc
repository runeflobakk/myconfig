"Vundle configuration

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'
  Plugin 'editorconfig/editorconfig-vim'

call vundle#end()



"vim-plug
call plug#begin()
  Plug 'tpope/vim-sensible'

  "On-demand loading
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

  Plug 'liuchengxu/graphviz.vim'
call plug#end()



"Other user config
syntax on
set ruler
set backspace=indent,eol,start

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

vnoremap // y/<C-R>"<CR>
