" Set up plugins here

" Vim-JavaScript
let javascript_enable_domhtmlcss = 1

" Mathchit
let b:match_words = '<:>,<\@<=tag>:<\@<=/tag>'
let b:match_words = 'if:end if'
hi MatchError guifg=white guibg=white
let b:match_ignorecase = 1

" -----------------------------------
"  UI. Look and feel
" -----------------------------------
" JSON
" let g:vim_json_syntax_conceal = 0

" Gitgutter
highlight clear SignColumn
" let g:gitgutter_highlight_lines = 1

" NerdTree
let NERDTreeWinSize=25
let NERDTreeIgnore = ['\.svn$', '\.git$', '\.o$', '\~$', '\.swp$', '\.pyc$', '\.class$', '\.dSYM$']
let NERDTreeDirArrows = 1
let g:NERDTreeMapCWD = 'cc'
" let NERDTreeWinPos = "left"
" let NERDTreeChDirMode=2

" Tagbar plugin configuration
let g:tagbar_compact = 1
let g:tagbar_width = 30
let g:tagbar_usearrows = 1
let g:tagbar_sort = 0

" Gundo plugin configuration
let g:gundo_width = 30
let g:gundo_preview_height = 15
let g:gundo_right = 1

" Vertical line indentation
let g:indentLine_color_term = 23
let g:indentLine_color_gui = '#073643'
let g:indentLine_char = '┊'
let g:indentLine_enabled = 0
let g:indentLine_noConcealCursor=""

" Airline plugin configuration
let g:airline_theme = 'solarized'
let g:airline_enable_syntastic=1
let g:airline_enable_tagbar=1
let g:airline_powerline_fonts=0
let g:airline_symbols = {}
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" -----------------------------------
"  And another thing
" -----------------------------------
" Vim-Session
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 60
let g:session_autoload = 'no'
let g:jscomplete_use = ['dom', 'moz']

" True Sublime Text style multiple selections
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Ultisnips
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger =  "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" Syntastic plugin configuration
let g:syntastic_loc_list_height = 5
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_highlighting = 1
let g:syntastic_auto_jump=1
let g:syntastic_mode_map = {'mode': 'passive',
    \ 'active_filetypes': ['php', 'xml', 'json', 'javascript'] }
" let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" -------------------------------------
"  Key maps
" -------------------------------------
" Enable vertical indentation
nmap <leader>gi :IndentLinesToggle<cr>

" NerdTree
map  <leader>t :NERDTreeTabsToggle<cr>
vmap <leader>t <esc>:NERDTreeTabsToggle<cr>
imap <leader>t <esc>:NERDTreeTabsToggle<cr>

" Tagbar - variables, methods
map  <leader>v :TagbarToggle<cr>
vmap <leader>v <esc>:TagbarToggle<cr>i
imap <leader>v <esc>:TagbarToggle<cr>i

" F5 - BufExplorer
nmap <leader>b <Esc>:BufExplorer<cr>
vmap <leader>b <Esc>:BufExplorer<cr>
imap <leader>b <Esc><Esc>:BufExplorer<cr>

" GUndo history view
nmap <leader>g :GundoToggle<cr>
vmap <leader>g <Esc>:GundoToggle<cr>

" Leader + space fix white space
nmap <leader>f :FixWhitespace<cr>
vmap <leader>f <Esc>:FixWhitespace<cr>
imap <leader>f <Esc><Esc>:FixWhitespace<cr>
