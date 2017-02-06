" -----------------------------Plugin Management--------"
" set the runtime path to include Vundle and initialize "

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required "
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar' 
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'auto-pairs'
" Plugin 'msanders/snipmate.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'flazz/vim-colorschemes'
Plugin 'craigemery/vim-autotag'
Plugin 'rking/ag.vim'
Plugin 'jvanja/vim-bootstrap4-snippets'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'chrisgillis/vim-bootstrap3-snippets'
Plugin 'scrooloose/nerdtree'
" Plugin 'davidhalter/jedi-vim'
"
"
" Plugin 'garbas/vim-snipmate'
" All of your Plugins must be added before the following line "

call vundle#end()            " required
filetype plugin indent on    " required
