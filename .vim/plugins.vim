
" -----------------------------Plugin Management--------"
" set the runtime path to include Vundle and initialize
set rtp+=%USERPROFILE%/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar' 
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required





