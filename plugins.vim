
": -----------------------------Plugin Management--------"
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar' 
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'pyflakes'
Plugin 'tpope/vim-surround'
Plugin 'josuegaleas/jay'
Plugin 'sjl/badwolf'
Plugin 'micha/vim-colors-solarized'
Plugin 'powerline/powerline'
Plugin 'Townk/vim-autoclose'
Plugin 'sickill/vim-monokai'
Plugin 'mbbill/undotree'
" Removed it since it is too slow on windows Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'ggreer/the_silver_searcher'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'gabrielelana/vim-markdown'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'jvanja/vim-bootstrap4-snippets'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"OAll of your Plugins must be added before the following line
"
"
"
"
call vundle#end()            " required
filetype plugin indent on    " required
" ----------------- Plugin info --------------
"
" cd ~/.vim/bundle
" git clone git://github.com/tpope/vim-vinegar.git
