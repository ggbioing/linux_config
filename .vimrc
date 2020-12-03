set encoding=utf-8
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
" Python IDE alike
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" if has('gui_running')
"   set background=dark
"   colorscheme zenburn
" else
"   colorscheme solarized
" endif

