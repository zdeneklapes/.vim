call plug#begin('~/.vim/plugged')
	Plug 'doums/darcula'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'valloric/youcompleteme', {'do': 'python3 install.py --all', 'for': ['c','cpp', 'java', 'cs', 'go', 'python', 'javascript', 'typescript', 'rust'] }
	Plug 'linluk/vim-websearch'
	Plug 'jamshedvesuna/vim-markdown-preview', { 'for': 'markdown', 'do': 'brew install grip' }
	Plug 'sheerun/vim-polyglot'
	Plug 'elzr/vim-json', { 'for': 'json' }
	Plug 'tpope/vim-fugitive'
	Plug 'scrooloose/syntastic'
	Plug 'klen/python-mode', { 'for': 'python' }
	Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
	Plug 'Chiel92/vim-autoformat', { 'on': 'AutoFormat' }
	Plug 'junegunn/gv.vim', { 'on': 'GV' }
	Plug 'tpope/vim-commentary'
	Plug 'szw/vim-maximizer', { 'on': 'MaximizerToggle' }
	Plug 'folke/todo-comments.nvim'
	Plug 'rhysd/vim-clang-format', { 'on': 'ClangFormat'}
	Plug 'kassio/neoterm'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'airblade/vim-gitgutter'
	" Plug 'vim-latex/vim-latex', { 'for': 'tex' }
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'shougo/vimshell.vim', { 'for': 'sh' }
	Plug 'keith/swift.vim', { 'for': 'swift' }
	Plug 'tokorom/vim-swift-format', { 'for': 'swift' }
	Plug 'peterhoeg/vim-qml'
	Plug 'vim-scripts/AutoComplPop'
	Plug 'vim-scripts/bash-support.vim', { 'for': 'sh' }
	Plug 'vim-scripts/indentpython.vim'
	Plug 'nvie/vim-flake8'
	Plug 'vim-scripts/AutoComplPop'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'natebosch/vim-lsc'
	Plug 'liuchengxu/vista.vim'
call plug#end()


""""" PLUG
" Plug 'apple/swift'
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Plug 'shougo/neocomplete.vim'
" Plug 'instant-markdown/vim-instant-markdown'
" Plug 'skywind3000/vim-preview'
" Plug 'lervag/vimtex'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'zchee/deoplete-clang'


""""" VUNDLE
" set nocompatible              " be iMproved, required
" filetype off                  " required
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" 	Plugin 'VundleVim/Vundle.vim'
" 	Plugin 'doums/darcula'
" 	Plugin 'wbthomason/packer.nvim', {'on': []}
" 	Plugin 'kien/ctrlp.vim'
" 	Plugin 'wincent/command-t', {'on': []}
" 	Plugin 'vim-airline/vim-airline'
" 	Plugin 'vim-airline/vim-airline-themes'
" 	Plugin 'valloric/youcompleteme', {'do': 'python3 install.py --all' }, {'on': []}
" 	Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}, {'on': []}
" 	Plugin 'linluk/vim-websearch'
" 	Plugin 'shougo/neocomplete.vim', {'on': []}
" 	Plugin 'instant-markdown/vim-instant-markdown'
" 	Plugin 'sheerun/vim-polyglot'
" 	Plugin 'elzr/vim-json', {'on': []}
" 	Plugin 'tpope/vim-fugitive', {'on': []}
" 	Plugin 'cognoscan/vim-vhdl', {'on': []}
" 	Plugin 'shirk/vim-gas', {'on': []}
" 	Plugin 'scrooloose/syntastic'
" 	Plugin 'dkprice/vim-easygrep', {'on': []}
" 	Plugin 'othree/eregex.vim', {'on': []}
" 	Plugin 'klen/python-mode', {'on': []}
" 	Plugin 'majutsushi/tagbar'
" 	Plugin 'Chiel92/vim-autoformat', {'on': []}
" 	Plugin 'jupyter-vim/jupyter-vim', {'on': []}
" 	Plugin 'skywind3000/vim-preview', {'on': []}
" 	Plugin 'scrooloose/nerdtree', {'on': []}
" 	Plugin 'junegunn/gv.vim'
" 	Plugin 'tpope/vim-commentary'
" 	Plugin '1995eaton/vim-better-javascript-completion', {'on': []}
" 	Plugin 'lervag/vimtex', {'on': []}
" 	Plugin 'puremourning/vimspector', {'on': []}
" 	Plugin 'szw/vim-maximizer', {'on': []}
" 	Plugin 'nvim-lua/plenary.nvim', {'on': []}
" 	Plugin 'folke/todo-comments.nvim', {'on': []}
" 	Plugin 'rhysd/vim-clang-format', {'on': []}
" 	Plugin 'zchee/deoplete-clang', {'on': []}
" 	Plugin 'Yohannfra/Vim-Goto-Header', {'on': []}
" 	Plugin 'kassio/neoterm', {'on': []}
" call vundle#end()            " required
" filetype plugin indent on    " required
"

