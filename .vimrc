syntax on
"##############################################################################
"##                                 INCLUDES                                ###
"##############################################################################
" include
source ~/.vim/include/plugins_settings.vim
" source ~/.vim/include/coc_settings.vim
source ~/.vim/include/fn.vim
source ~/.vim/include/plugins.vim

" colorscheme
colorscheme darcula
autocmd FileType c,cpp,vim,vhdl,asm colorscheme darcula



"##############################################################################
"##                                 SYNTAX                                  ###
"##############################################################################
let python_highlight_all=1
syntax on
syntax enable


"##############################################################################
"##                                 PATHOGEN                                ###
"##############################################################################
" execute pathogen#infect()


"##############################################################################
"##                                 HIGHLIGHT                               ###
"##############################################################################
highlight clear SpellBad
highlight SpellBad   term=standout  cterm=underline ctermfg=1 term=underline
highlight clear SpellCap
highlight SpellCap   term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare  term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


"##############################################################################
"##                                 SET                                     ###
"##############################################################################
" set runtimepath+=~/.vim/bundle/
set backspace		=indent,eol,start " must to be backspace work

" Search
set ignorecase
set incsearch   "noincsearch
set hlsearch    "nohsearch

" Tabs
set tabstop			=4
set shiftwidth	=4
set tabpagemax	=100
autocmd Filetype python     setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType cpp,c 		setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype makefile   setlocal noexpandtab softtabstop=4

" Key sequence timeout
set timeoutlen		=1000
set ttimeoutlen		=0

" Terminal
" set termwinkey		=<ESC>[31~ " nmap <ESC>[31~ :terminal<CR>
" set termwinsize		=10x0
set modifiable

" Split
set splitbelow
set splitright

" Wrapping
set textwidth		=0          " Turn off physical line wrapping
set wrapmargin		=0          " Turn off physical line wrapping
set nowrap
set linebreak                   " When wrapping, only at certain characters
set nofixendofline				" to not continue on next line at the end of file

" Find
set nocompatible			" Limit search to your project"
set path			+=**	" Search all subdirectories and recursively

" Mouse
set mousehide               " Hide mouse when typing

" Spell checking
set spelllang		=en,cs
set spellsuggest	+=40

" Row Numbers
set number relativenumber	"number relativenumber " turn hybrid line numbers on

" Include
set complete		=.,w,b,u,t,i,kspell
set include			=^\s*#\s*include
set path			=..,/usr/include,,,**
set completeopt		=menuone,longest,preview	" allow to finding in
" set completeopt+=popup
" set completepopup=height:10,width:60,highlight:Pmenu,border:off

set colorcolumn=100
autocmd FileType python        setlocal colorcolumn=120

" Session options
set sessionoptions=buffers,curdir,folds,help,tabpages,winsize,terminal,options
" set sessionoptions-=globals
" set sessionoptions-=localoptions
" set sessionoptions-=options
" set sessionoptions-=buffers
" set sessionoptions-=resize

" History
set history			=1000

" code
" set lines				=40
" set columns			=80

"Cursor settings:
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
set cursorline
" let &t_SI = "\<esc>[5 q"
" let &t_SR = "\<esc>[3 q"
" let &t_EI = "\<esc>[2 q"


" o
set scrolloff		=3
set foldmethod		=indent
set listchars		=tab:→\ ,eol:↲ " ,trail:~\ ,extends:>\ ,precedes:<\ ,space:␣
set fileencodings	=utf-8,latin2
set exrc
set secure
set nofoldenable
set nocompatible
set ruler
set showcmd
set wildmenu
set wildmode=full,list:longest
set showmatch
set statusline+=%{FugitiveStatusline()}
" set noequalalways 	" make windows size equal
" set directory = already set by polyglot ,  *.swp files sorted
set signcolumn=auto	" when errors are not hide column
set sessionoptions-=blank " for syntastic error save


"##############################################################################
"##                                 SETLOCAL                                ###
"##############################################################################
setlocal smarttab
setlocal smartindent


"##############################################################################
"##                                 AUTOCMD                                 ###
"##############################################################################
autocmd BufWritePre * :%s/\s\+$//e

" setlocal
autocmd FileType *        setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd Filetype netrw    setlocal bufhidden=delete "or use qa!"
autocmd Filetype smith    setlocal commentstring=;\ %s

" filetype
autocmd BufRead,BufNewFile *.ifjcode 	set filetype=sh
autocmd BufRead,BufNewFile *.env* 		set filetype=sh
autocmd BufRead,BufNewFile *.cls 		set filetype=tex
" autocmd BufRead,BufNewFile *.html		set filetype=html
" autocmd BufRead,BufNewFile *.c	set filetype=c
" autocmd BufRead,BufNewFile *.cpp		set filetype=cpp
" autocmd BufRead,BufNewFile *.java		set filetype=java
" autocmd BufRead,BufNewFile *.vhd		set filetype=vhdl
" autocmd BufRead,BufNewFile *.md	set filetype=markdown
" autocmd BufRead,BufNewFile *.asm    set filetype=asm
" autocmd BufRead,BufNewFile *.s      set filetype=asm
" autocmd BufRead,BufNewFile *.stc    set filetype=cel
" autocmd BufRead,BufNewFile *.config set filetype=config


" view
autocmd BufWinLeave *.* mkview			"create view
autocmd BufWinLeave *.* silent loadview "load saved view


"##############################################################################
"##                                 MAP										###
"##############################################################################
"#####################################"
"##				vars				##"
"#####################################"
let mapleader			= '\'
let ghregex				= '\(^\|\s\s\)\zs\.\S\+'
" netwr
let g:netrw_list_hide	= ghregex
let g:netrw_banner		= 1
let g:netrw_liststyle	= 3		"tree
let g:netrw_preview		= 1


"#####################################"
"##				vnoremap			##"
"#####################################"
" yank or copy the selected text and then performs a search using the yanked text, escaping any
" special characters, and moving the cursor to the next match.
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

if &diff
    map <leader>1 :diffget LOCAL<CR>
    map <leader>2 :diffget BASE<CR>
    map <leader>3 :diffget REMOTE<CR>
endif

"#####################################"
"##				nnoremap			##"
"#####################################"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" nnoremap <C-q> <C-w>q

nnoremap <leader>+ :resize +10<CR>
nnoremap <leader>_ :resize -10<CR>
nnoremap +  :vert resize +10<CR>
nnoremap _  :vert resize -10<CR>

" Make Y yank till end of line
nnoremap Y y$

" VIMRC
nnoremap <Leader>ve :e ~/.vimrc<CR>
nnoremap <Leader>vr :source ~/.vimrc<CR>


"#####################################"
"##				nmap				##"
"#####################################"
nmap <F2> :noh<CR>
nmap <C-e> <ESC>:Vex<CR>
" netwr
nmap <F3> I
nmap <F4> gh
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>


"#####################################"
"##				imap				##"
"#####################################"
" imap <F5> <ESC>:noh<CR>i


"##############################################################################
"##                                 TRASH                                   ###
"##############################################################################
" nmap <F3> command <CR>
"imap <F3> <ESC> command <CR>i

"nmap - NORMAL MODE
"imap - INSERT MODE
"map -
"nnoremap <Up>    <Nop>
"nnoremap <Down>  <Nop>
"nnoremap <Left>  <Nop>
"nnoremap <Right> <Nop>
"
"inoremap <Up>    <Nop>
"inoremap <Down>  <Nop>
"inoremap <Left>  <Nop>
"inoremap <Right> <Nop>
"

" wrap current paragraph
" map  <F6> <ESC>gq}
" map  <C-F6> )i<CR>%<CR><ESC>
" imap <F6> <ESC>gq}k$a

" settings with various tabstop and tabwidth (in command or insert mode)
" tab=8
" map  <F7> <ESC>:set ts=8<CR>:set noexpandtab<CR>:set sw=8<CR>
" imap <F7> <ESC>:set ts=8<CR>:set noexpandtab<CR>:set sw=8<CR>a

" tab=4, spaces only
" map  <F8> <ESC>:set incsearch<CR>:set ts=4<CR>:set expandtab<CR>:set sw=4<CR>
" imap <F8> <ESC>:set incsearch<CR>:set ts=4<CR>:set expandtab<CR>:set sw=4<CR>a

" save and make
"map  <F9> <ESC>:w<CR>:make<CR>
"imap <F9> <ESC>:w<CR>:make<CR>
"
"imap <C-d> <C-o>diw

"" insert date stamp for changelog
"map <F10> <ESC>k:r! LC_ALL=en_US date "+* \%a \%b \%d \%Y Ales Smrcka"<CR>o
"imap <F10> <ESC>k:r! LC_ALL=en_US date "+* \%a \%b \%d \%Y Ales Smrcka"<CR>o<TAB>

" apple Terminal (Option-Left, -Right)
" imap b <ESC>bi
" imap f <ESC>lwi
" map  b b
" map  f w

" hi Search cterm=NONE ctermfg=black
" function! ReverseBackground()
" let Mysyn=&syntax
" if &bg=="light"
" set bg=dark
" else
" set bg=light
" endif
" syntax on
" exe "set syntax=" . Mysyn
" echo "now syntax is "&syntax
" endfunction
" command! Invbg call ReverseBackground()
" noremap <F12> :Invbg<CR>

" abbr ture  true
" abbr flase false
" abbr emailF email@email.com
"autocmd FileType cpp setlocal number
"autocmd FileType c setlocal number
"autocmd FileType python setlocal number
"autocmd FileType glsl setlocal number
"au BufNewFile,BufRead *.stc setf test
"au BufRead,BufNewFile *.stc set filetype=cel
"set spell
"size
" due to some delay: http://tech.groups.yahoo.com/group/vim/message/91158
"setlocal expandtab "expand tab to spaces
" set foldlevel=2
" set bg=dark
""" include ./.vimrc file (securely)

