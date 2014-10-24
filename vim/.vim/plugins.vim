filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself (required!)
Plugin 'gmarik/Vundle.vim'

" ------------------------------
"  Sessions & buffers
" ------------------------------
" To quickly and easily switch between buffers
Plugin 'vim-scripts/bufexplorer.zip'

" Miscellaneous auto-load Vim scripts
Plugin 'xolox/vim-misc'

" Extended session management for Vim
Plugin 'xolox/vim-session'

" ------------------------------
"  UI. Look and feel.
" ------------------------------
" File explorer
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Plugin to visualize Vim undo tree.
Plugin 'sjl/gundo.vim'

" Shows tag list (vars, funcs, etc)
Plugin 'majutsushi/tagbar'

" Git wrapper for Vim
Plugin 'tpope/vim-fugitive'

" Shows a git diff in the gutter (sign column)
Plugin 'airblade/vim-gitgutter'

" Pretty status bar
Plugin 'bling/vim-airline'

" Highlights trailing whitespace in red and provides :FixWhitespace to fix it
Plugin 'bronson/vim-trailing-whitespace'

" -----------------------------------------
"  Plugins for autocompletion, snippets,
"  and other stuff that makes life easier
" -----------------------------------------
" Editorconfig to help define and maintain consisten coding styles
Plugin 'editorconfig/editorconfig-vim'

" Provides support for expanding abbreviations similar to emmet.
Plugin 'mattn/emmet-vim'

" Auto completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" A code-completion engine.
Plugin 'Valloric/YouCompleteMe'

" The ultimate snippet solution for Vim.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Provides mappings to easily manage parens, brackets etc.
Plugin 'tpope/vim-surround'

" Extended % matching for HTML, LaTeX, and many other languages
Plugin 'vim-scripts/matchit.zip'

" Commenting code
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdcommenter'

" Vim script for text filtering and alignment.
Plugin 'godlygeek/tabular'

" True Sublime Text style multiple selections
Plugin 'terryma/vim-multiple-cursors'

" Cycle through history of yanks
Plugin 'maxbrunsfeld/vim-yankstack'

" ------------------------------
"  Syntax
" ------------------------------
" Syntax checkers
" Plugin 'walm/jshint.vim'
Plugin 'scrooloose/syntastic'

" Function and namespace highlighting
Plugin 'esneider/vim-simlight'

" HTML5 syntax support
Plugin 'othree/html5.vim'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'

" CSS
Plugin 'hail2u/vim-css3-syntax'

" LESS/Sass/Stylus
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'wavded/vim-stylus'

" Markup languages
Plugin 'Markdown-syntax'
Plugin 'juvenn/mustache.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'nono/vim-handlebars'

" PHP
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'vim-scripts/PDV--phpDocumentor-for-Vim'

" ------------------------------
"  Colorschemes
" ------------------------------
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
