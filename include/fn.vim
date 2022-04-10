"##############################################################################
"##                                 FUNCTIONS                               ###

"#####################################"
"##				TMUX				##"
" use 256 colors in terminal - for tmux colorfull vim
" if !has("gui_running")
" set t_Co=256
" set term=screen-256color
" endif


"#####################################"
"##				COMMENTS			##"
autocmd FileType c,cpp,java,scala,javascript,typescript	let b:comment_leader = '//'
autocmd FileType sh,ruby,python,tmux,conf,fstab,
			\gitconfig,gitignore,cmake,ifjcode	let b:comment_leader = '#'
autocmd FileType tex							let b:comment_leader = '%'
autocmd FileType mail							let b:comment_leader = '>'
autocmd FileType vim							let b:comment_leader = '"'
autocmd FileType vhdl							let b:comment_leader = '--'
autocmd FileType asm							let b:comment_leader = ';'
function! CommentToggle()
	execute ':silent! s/\([^ ]\)/'	. escape(b:comment_leader,'\/') . ' \1/'
	execute ':silent! s/^\( *\)'	. escape(b:comment_leader,'\/') . ' \?' . escape(b:comment_leader,'\/') . ' \?/\1/'
	execute "normal! j"
endfunction
" nmap <C-c> :call CommentToggle()<CR>


"#####################################"
"##				AUTOCMD				##"
if has("autocmd")
	augroup JumpCursorOnEdit
		autocmd!
		autocmd BufReadPost *
					\ if line("'\"") > 0 && line("'\"") <= line("$") |
					\   exe "normal! g'\"" |
					\ endif
	augroup END
endif


"##############################################################################
"##                                 merge_tabs                              ###
function! MergeTab()
    let bufnums = tabpagebuflist()
    hide tabclose
    topleft vsplit
    for n in bufnums
        execute 'sbuffer ' . n
        wincmd _
    endfor
    wincmd t
    quit
    wincmd =
endfunction
command! MergeTab call MergeTab()


augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO', -1)
augroup END
