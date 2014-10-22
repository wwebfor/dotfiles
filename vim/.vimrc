set nocompatible

" Load plugins
source ~/.vim/plugins.vim

" Load plugin configs
source ~/.vim/plugin-configs.vim

" Load local configs (specific for a computer)
source ~/.vimrc.local

" Enable filetype detection and ft specific plugin/indent
filetype plugin indent on

" -----------------------------
"  Look and feel
" -----------------------------
" Enable syntax highlighting
syntax on

" Color scheme
set background=dark
set t_Co=256
color solarized

" Show line numbers
set number

" Highlight current line
set cursorline
set colorcolumn=80

" Don't highlight lines longer than 500 characters
set synmaxcol=500

" Show file's name in titlebar
set icon title

" Show confirm dialogs
set confirm

" Disable bell
set vb t_vb=

" Enable mouse support
set mouse=a

" Show incomplete commands
set showcmd

" Show status line
set laststatus=2

" 5 lines above/below cursor when scrolling
set scrolloff=5

" Show matching bracket (briefly jump)
set showmatch

" Bracket blinking
set matchtime=5

" Specifically for HTML tags
set matchpairs+=<:>

" -----------------------------
"  Editor
" -----------------------------
set nowrap
set noswapfile
set browsedir=buffer

" Make directory with an opened file active
set autochdir

" Automatically read a file when it is changed
set autoread

" Entries of the commands history
set history=1000

" Entries of the undo list
set undolevels=1000

" Prevent some security exploits
set modelines=0

" Update a file after 1 second of no activity
set updatetime=1000

" Search
set ignorecase
set smartcase
set incsearch

" Highlight search results
set hlsearch

" More powerful backspacing
set backspace=indent,eol,start

" Yank and paste using system clipboard
set clipboard=unnamedplus

" Enable folding
set foldenable

" -----------------------------
"  Autocomplete
" -----------------------------
" Command line completion
set wildmenu
set wildmode=longest,list,full
set wildignore=.svn,.git,*.o,*~,*.swp,*.pyc,*.class,*.dSYM

" Tab completion
set completeopt=longest,menuone

" Ctags index directories
set tags=~/.vim/tags

" Syntax completion by highlight rules for unsupported filetypes
set omnifunc=syntaxcomplete#Complete

" -----------------------------
"  Files
" -----------------------------
" Encodings
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set fileencodings=utf-8,cp1251,ucs-bom,latin1
set fileformats=unix,dos,mac

" Enable auto indenting
set autoindent smartindent copyindent

" Use spaces instead of tabs
set expandtab smarttab

" Tab equals 4 spaces
set shiftwidth=4 softtabstop=4 tabstop=4

" Make backspace work like it should
set backspace=2

" Don't reset cursor to start of line when moving around
set nostartofline

" Keep a persistent undo backup file
if has('persistent_undo')
    set undofile undodir=~/.vim/.undo//,~/tmp//,/tmp//
endif

" -----------------------------
"  Autocommands
" -----------------------------
augroup vimrc
autocmd!

" Remove trailing whitespace before saving
au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Filetype commands
" --------------------
" Json filetype detection
au BufNewFile,BufRead *.json set filetype=json

" Less, Stylus, and SASS
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.scss set filetype=scss
au BufRead,BufNewFile *.styl set filetype=stylus

" Markdown filetype detection
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.mkd set filetype=markdown

" Enable spell checking in commit and markdown files
au FileType gitcommit,markdown setlocal spell
au FileType markdown,json setlocal wrap

" Omni completion
au FileType c setlocal omnifunc=ccomplete#Complete
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType php setlocal omnifunc=phpcomplete#CompletePHP
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType less setlocal omnifunc=csscomplete#CompleteCSS
au FileType sass setlocal omnifunc=csscomplete#CompleteCSS

" Execute functions
au FileType javascript call DoJavascriptCommands()
au FileType php call DoPHPCommands()

augroup END

" -----------------------------
" Keybindings
" -----------------------------
" Autocompletion
inoremap <C-space> <C-x><C-o>

" Enter command mode faster
nnoremap ; :

" Disable Ex mode and use Q for formatting the current paragraph (or selection)
vnoremap <silent> Q gq
nnoremap <silent> Q gqap

" Write or save file
nmap <leader>w :w<cr>
vmap <leader>w <Esc>:w<cr>
imap <leader>w <Esc><Esc>:w<cr>

" Make * and # work with visual selection
vnoremap <silent> * yq/i\V<Esc>p<CR>
vnoremap <silent> # yq?i\V<Esc>p<CR>

" Open new tab with ctrl-t as in Firefox
nnoremap <silent> <C-t> :tabnew<CR>
inoremap <silent> <C-t> <C-\><C-o>:tabnew<CR>

" Easier navigation between split windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" -----------------------------
"  Functions
" -----------------------------
function DoJavascriptCommands()
    map  <leader>c :JSHint<cr>
    vmap <leader>c <esc>:JSHint<cr>i
    imap <leader>c <esc>:JSHint<cr>i
endfunction;

function DoPHPCommands()
    let php_sql_query = 1
    let php_htmlInStrings = 1
    let php_baselib = 1
endfunction;
