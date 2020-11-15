set number
set hlsearch
set spell spelllang=en_us
highlight LineNr ctermfg=grey
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
colorscheme industry
highlight SpellLocal ctermbg=5

""""Vundle"""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'ggbioing/vim-online-thesaurus'

call vundle#end()
filetype plugin indent on
