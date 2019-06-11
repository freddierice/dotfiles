" VUNDLE START
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle
Plugin 'gmarik/vundle'

" additional plugins
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
" Plugin 'rdnetto/YCM-Generator'
Plugin 'w0rp/ale'
Plugin 'lervag/vimtex'
Plugin 'rust-lang/rust.vim'
Plugin 'integralist/vim-mypy'
"" Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on
" VUNDLE END

" ale
let g:ale_linters = {'cpp': ['gcc'], 'c': ['gcc'], 'python': ['flake8', 'pylint']}

" ycm
let g:ycm_global_ycm_extra_conf = '/home/anon/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_key_invoke_completion = '<C-b>'

" golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['go', 'errcheck', 'golint']

" python
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = ['-E', '-j', '2']

" rust
let g:ycm_rust_src_path = '/usr/local/rust/rustc-1.12.0/src'

" ycm
let g:ycm_confirm_extra_conf = 0

" latex
" let g:vimtex_fold_newcommands = 0
" let g:vimtex_fold_enabled = 1
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat = 'pdf'
if !exists('g:ycm_semantic_triggers')
   let g:ycm_semantic_triggers = {}
endif
"let g:ycm_semantic_triggers.tex = [
"   \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
"   \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
"   \ 're!\\hyperref\[[^]]*',
"   \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
"   \ 're!\\(include(only)?|input){[^}]*',
"   \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
"   \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
"   \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
"   \ ]


" set my tabbing prefs
"set smarttab
"set cindent
"set expandtab
set shiftwidth=4
set tabstop=4

" line wrapping
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" filetype commands
filetype on 
autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType css set tabstop=2
autocmd FileType css set shiftwidth=2
autocmd FileType python set tabstop=4
autocmd FileType python set expandtab
autocmd FileType python set shiftwidth=4
autocmd FileType python set softtabstop=4
autocmd FileType tex set spell
autocmd FileType txt set spell
" autocmd Filetype c,cc,cpp set comments^=://

" set textwidth=80
" set formatoptions=croqlt " Hard-wrap when typing exceeds <textwidth>

" turn on syntax coloring
syntax on

" set indentation stuff
filetype indent plugin on

" fix latex issue...
set backspace=indent,eol,start

" show numbers in grey
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set number
set ruler

" for tmux issues
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

set t_Co=256
set background=dark
