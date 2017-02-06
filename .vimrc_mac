set nocompatible    " we want the latest vim settings

so ~/.vim/plugins.vim

"-------------General Settings--------------"
set backspace=indent,eol,start          "Make backspace behave like every other editor.
let mapleader = ',' 			      	"The default leader is \, but a comma is much better.
" Put your non-Plugin stuff after this line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set showmatch
set showmode        " show mode in status bar(insert/replace)
set matchtime=2     " show matching bracket for 0.2 sec 
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set numberwidth=4   " line numbering takes up 5 spaces
set ignorecase      " ignore case when searching
set nowrap          " stop lines from wrapping
set smartcase       " But become case sensitive if you type uppsercase
set title           " don't show "Thanks for flying vim"
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set bs=2            " Backspace can delete previous characters
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set undolevels=2000
set cpoptions=$cF
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]  

set noautoindent    " turn off by default, enable for specific filetypes
set smartindent   " turn off by default, enable for specific filetypes/bs
set smarttab       " turn off by default, enable for specific filetypes
set textwidth=80
set wrapmargin=2
"-------------General Settings--------------"
" NERD_tree config

let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/ "recursively searches directory for 'tags' file

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1      " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1              " Close when something's selected
let Tlist_Use_Right_Window = 1             " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1         " Close folds for inactive files

" SCMDiff Plugin Configuration
let SCMDiffCommand = 'git'

"set autowrite       " auto saves changes when quitting and swiching buffer
set expandtab       " tabs are converted to spaces
set sm              " show matching braces, somewhat annoying...

" remove ALL auto-commands so there are no dupes
autocmd!
if has("autocmd")
   " Restore cursor position
   au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

   " Filetypes (au = autocmd)
   au FileType helpfile set nonumber      " no line numbers when viewing help
   au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
   au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back
   
   " When using mutt, text width=72
   au FileType mail,tex set textwidth=72
   au FileType cpp,c,java,sh,pl,php,py,asp  set autoindent
   au FileType cpp,c,java,sh,pl,php,py,asp  set smartindent
   au FileType cpp,c,java,sh,pl,php,py,asp  set cindent
   au FileType py set foldmethod=indent
   au FileType py set textwidth=79  " PEP-8 friendly
   au FileType py inoremap # X#
   au FileType py set expandtab
"   au FileType py set omnifunc=pythoncomplete#Complete
   autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
   autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
   "au BufRead mutt*[0-9] set tw=72
   
   " Automatically chmod +x Shell scripts
   au BufWritePost   *.sh             !chmod +x %

   " File formats
   au BufNewFile,BufRead  *.pls    set syntax=dosini
   au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
endif
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" This is for buffer management

:map <F4> :bd<CR>
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
"Use F10 to see the list of buffers
nnoremap <F10> :b <C-Z>
" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 
set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"The following lets you type Ngb to jump to buffer number N (a number from 1 to 99). For example, typing 12gb would jump to buffer 12.

let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile
set bs=indent,eol,start " # Allow backspacing over everything in insert mode
map <C-a> <esc>ggVG<CR>     " # Select all lines in a doc
set t_Co=256
let g:Powerline_symbols = "fancy"






"-------------Search--------------"

set hlsearch        " highlight searches
set incsearch       " do incremental searching

" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
map <F3> :NERDTreeToggle<CR>" map F3 to open NERDTree
map <F7> :TlistToggle<CR> " map F7 to toggle the Tag Listing
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
map ,p :Lodgeit<CR>         " pastes selection / file to paste.pocoo.org
map ,ft :%s/	/    /g<CR> " replace all tabs with 4 spaces
map ,d :call <SID>SCMDiff()<CR>


" Make Nerdtree easier to toggle

nmap <Leader>. :NERDTreeToggle<cr>
"-------------------------- Viewport Controls -----------"
" ie moving between split panes
set splitbelow
set splitright
map <silent>,h <C-w>h 
map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

map <silent><C-left> <C-T>  " step out of a python function
map <silent><C-right> <C-]> " follow a python function 




"-------------Visuals-----------------------------------"
"send current word to CtrlP
map <F6> <C-P><C-\>w 
"    syntax on                    " syntax highlighing

set ls=2                     " allways show status line
set linespace=15   			 " Macvim-specific line-height.
syntax enable
set background=dark
"------------------------django specific 
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
"
"colorscheme solarized
" let g:solarized_termcolors=256
"-------------------------Tips and Tricks --------------"
" jump to the function definition using Ctrl-]
" I jump to /path/not/knowable/BlaBlaClassName.php with gf,
" I jump back to the previous buffer with <C-^> (unrelated to your question),
" I jump to the declaration of BlaBlaClassName in
" /path/not/knowable/BlaBlaClassName.php again with <C-]> thanks to a tagsfile
" generated with ctags.
" "
" ,ev  to open .vimrc file
" :sp, vsp for slit
" :bp/n to go to previous or next buffer
" Ctrl w and | to expant the vertical split and = to make them equal again
" Ctrl w = to make them equal 
" You can always see the full path to the current editfile by using 

"    :echo expand('%:p') 

" :bp to go to your previous location
" vim-vinegar allows you to use - to move up a folder
"       d will create a folder
"       D will detele a file, or if you are on a file name, Capital D will 
" detele the file -
"       % will create a new file (so click - first and then %) 
"
" Hit Ctrl 6 to go back to your previous point of editing


" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/ "recursively searches directory for 'tags' file

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1      " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1              " Close when something's selected
let Tlist_Use_Right_Window = 1             " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1         " Close folds for inactive files

" SCMDiff Plugin Configuration
let SCMDiffCommand = 'git'

"set autowrite       " auto saves changes when quitting and swiching buffer
set expandtab       " tabs are converted to spaces
set sm              " show matching braces, somewhat annoying...
"It's useful to show the buffer number in the status line.
set laststatus=2 
set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"The following lets you type Ngb to jump to buffer number N (a number from 1 to 99). For example, typing 12gb would jump to buffer 12.

let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile
set bs=indent,eol,start " # Allow backspacing over everything in insert mode
map <C-a> <esc>ggVG<CR>     " # Select all lines in a doc
set t_Co=256
let g:Powerline_symbols = "fancy"

"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

nmap <Leader>w  :w<cr>
nmap <Leader>q  :q<cr>
"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
map <F3> :NERDTreeToggle<CR>" map F3 to open NERDTree
map <F7> :TlistToggle<CR> " map F7 to toggle the Tag Listing


let g:molokai_original = 1
colorscheme ChocolateLiquor


" Syntastic defaults""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:autotagTagsFile=".tags"
set nobackup
set nowritebackup
set noswapfile


set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//


colorscheme badwolf  
set cursorline
set cursorcolumn


function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" " Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
"------------------------Tips and Tricks --------------"
" zz bring cursor to middle of screen
"  


"--------------------------Markers
" m Capital Letter, mA to place a marker and find it across files

" 
" 'A  Marks the line where the cursor jumped from (in current buffer)
" `A Marks the position where the cursor jumped from (in current buffer) 
" .A Marks the position where the last change occurred (in current buffer) 
"  "A  Marks the position where the user last exited the current buffer
" [  Marks the beginning of the previously changed or yanked text
" ]  Marks the end of the previously changed or yanked text
" <  Marks the beginning of the last visual selection
" >  Marks the end of the last visual selection"`'
" ]' Next mark line position
" [' Previous mark line position
" ]` Next mark line and column position Previous 
" [` mark line and column position



" 
" ,ev  to open .vimrc file

" :sp, vsp for slit
" :bp/n to go to previous or next buffer
" Ctrl w and | to expant the vertical split and = to make them equal again
" Ctrl w = to make them equal 
" You can always see the full path to the current editfile by using 

"    :echo expand('%:p') 

" :bp to go to your previous location
" vim-vinegar allows you to use - to move up a folder
"       d will create a folder
"       D will detele a file, or if you are on a file name, Capital D will 
" detele the file -
"       % will create a new file (so click - first and then %) 
"
" Hit Ctrl 6 to go back to your previous point of editingx"
"
" replace " double quotes with single quote"
"%s/\"\([^"]*\)\"/'\1'/g"]
