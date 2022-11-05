""##############################################################################
""##                                 PLUGIN SETTINGS                         ###
""##############################################################################


""""" Plug 'doums/darcula'
autocmd FileType c,cpp,vim,vhdl,asm colorscheme darcula
" autocmd Filetype asm set syntax=gas
" autocmd BufReadPost *.asm set syntax=gas
" autocmd BufReadPost *.s   set syntax=gas
" autocmd FileType vhd colorscheme darcula
" call darcula#Hi('Comment', [ '#ffffff', 255 ], darcula#palette.null, 'italic')
" call darcula#Hi('LineNr', [ '#000000', 244 ])
" set termguicolors


""""" Plug 'kien/ctrlp.vim'
nnoremap <leader>. :CtrlPBufTag<cr>
let g:ctrlp_use_caching = 0
let g:ctrlp_show_hidden=1
" nnoremap <leader>. :CtrlPBufTagAll<cr>
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'


""""" Plug 'vim-airline/vim-airline'
""""" Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='selenized'
" let g:airline#extensions#tabline#formatter = 'default'


""""" Plug 'valloric/youcompleteme', {'do': 'python3 install.py --all' }
let g:ycm_confirm_extra_conf = 0
let g:ycm_goto_buffer_command = 'split-or-existing-window'
let g:ycm_auto_hover=''
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_global_ycm_extra_conf = '/Users/zlapik/.vim/ycm/.ycm_extra_conf.py'
nnoremap <C-]> :YcmCompleter GoTo<CR>
nnoremap gd :YcmCompleter GetDoc<CR>
" let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
" let g:ycm_show_diagnostics_ui = 0	" disable ycm syntastic check


""""" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-css',
\ 'coc-cssmodules',
\ 'coc-tsserver',
\ 'coc-rome',
\ 'coc-html-css-support',
\ 'coc-clangd',
\ 'coc-clang-format-style-options',
\ 'coc-cmake'
\ ]


""""" Plug 'linluk/vim-websearch'
let g:web_search_browser = "safari"
let g:web_search_command = "open"
let g:web_search_engine = "google"
let g:web_search_use_default_mapping = "yes"
" search for word under cursor in normal mode
nnoremap <leader>ws :WebSearchCursor<CR>
" search for selection in visual mode
vnoremap <leader>ws :WebSearchVisual<CR>


""""" Plug 'scrooloose/syntastic'
" general
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_stl_format = "[%E{|Err-%fe-#%e|}%B{, }%W{|Warn-%fw-#%w|}]"
let g:synastic_debug = 1
" basics
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "regex": 'static data' }
" signs
let g:syntastic_error_symbol = "\u2717"
" let g:syntastic_style_error_symbol=
let g:syntastic_warning_symbol = "\u26A0"
" let g:syntastic_style_warning_symbol=
" sh
let g:syntastic_sh_checkers = ["checkbashisms", "sh", "shellcheck"] " bashate
" c
let g:syntastic_c_checkers = [ "cppcheck", "cppclean", "gcc", "make", "sparse", "splint", "oclint"]
let g:syntastic_c_sparse_post_args="-gcc-base-dir " .
\ system("gcc -v 2>&1 | sed -n '/^Reading specs/ { s#.* /#/#; s#/[^/]*$##; p; }'")
" cpp
" let g:syntastic_cpp_compiler_options="-m32 -I ./inc -I ./inc/libs"
" py
let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:syntastic_mode_map = {
\ "mode": "active",
\ "active_filetypes": ["ruby", "php", "cpp", "python", "py", "sh", "shell"],
\ "passive_filetypes": ["python"]
\ }
let g:syntastic_shell = "/bin/sh"
" php
let g:syntastic_php_checkers = ["php", "phpmd", "phpstan"] " phpcs, phplint
" swift
let g:syntastic_swift_swiftlint_use_defaults = 1
let g:syntastic_swift_checkers = ['swift', 'swiftpm', 'swiftlint']




""""" Plug 'klen/python-mode'
let g:pymode = 1
let g:pymode_syntax_all = 1
let g:pymode_python = 'python3'
let g:pymode_options_max_line_length = 120
let g:pymode_virtualenv = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', "pep257", "pylint"]
let g:pymode_lint_cwindow = 1
let g:pymode_lint_ignore = "D203"
let g:pymode_rope = 0


""""" Plug 'majutsushi/tagbar'
nmap <C-s> <ESC>:TagbarToggle<CR>
let g:tagbar_autoclose=1


""""" Plug 'rhysd/vim-clang-format'
let g:clang_format#style_options = {
\ "AccessModifierOffset" : -4,
\ "AllowShortIfStatementsOnASingleLine" : "true",
\ "AlwaysBreakTemplateDeclarations" : "true",
\ "ColumnLimit": "100",
\ "Standard" : "C++11"}
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" map to <Leader>cf in C++ code
" autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
" if you install vim-operator-user
" autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
" nmap <Leader>C :ClangFormatAutoToggle<CR>


""""" Plug 'scrooloose/nerdtree'
nnoremap <C-t>  :NERDTreeToggle<CR>
nnoremap <C-tf> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1


""""" Plug 'puremourning/vimspector'
" let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector


""""" Plug 'szw/vim-maximizer'
let g:maximizer_set_default_mapping = 0
nnoremap <leader><F3> :MaximizerToggle<CR>


""""" Plug 'airblade/vim-gitgutter'
highlight GitGutterAdd    guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDElete guifg=#ff2222 ctermfg=Red
nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)
let g:gitgutter_enabled =1
let g:gitgutter_map_keys=0


""""" tex
let g:Tex_CompileRule_pdf = "make"
let g:Tex_GotoError=1


""""" Plug 'shougo/neocomplete.vim'
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1


""""" Plug 'jamshedvesuna/vim-markdown-preview', { 'for': 'markdown'}
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
" let vim_markdown_preview_temp_file=1

""""" Plug 'tokorom/vim-swift-format'
" let g:ale_linters = {
" \   'swift': ['swift-format'],
" \}

" let g:vim_swift_format_use_ale = 1
" " default
" let g:vim_swift_format_executable = 'swift-format'
" let g:vim_swift_format_lint_command = 'swift-format lint %s'
" let g:vim_swift_format_format_command = 'swift-format format --in-place %s'

""""" Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_exclude_patterns = ['scp://.*']
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
au FileType gitcommit let b:EditorConfig_disable = 1


""""" Plug 'vim-scripts/AutoComplPop'
let g:AutoComplPop_Behavior = {
\ 'c': [ {'command' : "\<C-x>\<C-o>",
\       'pattern' : ".",
\       'repeat' : 0}
\      ]
\}
let g:AutoComplPop_CompleteoptPreview = 1

""""" Plug 'natebosch/vim-lsc'
" let g:lsc_server_commands = {'dart': 'dart_language_server', 'python': 'python_language_server'}
" Use all the defaults (recommended):
let g:lsc_auto_map = v:true

" Apply the defaults with a few overrides:
let g:lsc_auto_map = {'defaults': v:true, 'FindReferences': '<leader>r'}

" Setting a value to a blank string leaves that command unmapped:
let g:lsc_auto_map = {'defaults': v:true, 'FindImplementations': ''}

" ... or set only the commands you want mapped without defaults.
" Complete default mappings are:
let g:lsc_auto_map = {
    \ 'GoToDefinition': '<C-]>',
    \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-p>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'Rename': 'gR',
    \ 'ShowHover': v:true,
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'SignatureHelp': 'gm',
    \ 'Completion': 'completefunc',
    \}


""""" Plug 'junegunn/fzf.vim'
nnoremap <silent><leader>f :FZF -q <C-R>=expand("<cword>")<CR><CR>

