" based on http://github.com/jferris/config_files/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set showbreak=... "set visual cue for linebreak

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
	syntax on
	set hlsearch
endif

set rtp+=$HOME/.vim/bundle/Vundle.Vim/

call vundle#begin()

Plugin 'VundleVim/Vundle.Vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'walm/jshint.vim'
Plugin 'bling/vim-airline'
Plugin 'suan/vim-instant-markdown'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tikhomirov/vim-glsl'
Plugin 'fatih/vim-go'
Plugin 'valloric/YouCompleteMe'
Plugin 'rjohnsondev/vim-compiler-go'
Plugin 'leafgarland/typescript-vim'
Plugin 'tfnico/vim-gradle'
Plugin 'udalov/kotlin-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-reload'
Plugin 'xolox/vim-misc'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

let g:golang_goroot = '/home/dan/Development'

let g:ycm_confirm_extra_conf = 0
" setup ycm with rust system src path
let g:ycm_rust_src_path = $RUSTUP_HOME.'/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust'

" let g:instant_markdown_slow = 1
let g:Powerline_symbols = 'fancy'

let g:strip_whitespace_on_save=1
let g:rustfmt_command = ""
let g:rustfmt_autosave = 1
let g:test_mode = 'test'

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Always display the status line
set laststatus=2

let mapleader=","

function! SaveAndRunCargo(cmd)
    execute ':w'
    let c = ':!cargo ' . a:cmd
    execute c
endfunction

function! SaveAndRunGoTest(cmd)
    execute ':w'
    let c = ':!go test ' . a:cmd
    execute c
endfunction

let g:go_fmt_command = "goimports"

noremap <Leader>r :call SaveAndRunCargo('run')<CR>
noremap <Leader>t :call SaveAndRunCargo('test')<CR>
noremap <Leader>b :call SaveAndRunCargo('build')<CR>
noremap <Leader>m :call SaveAndRunGoTest('./...')<CR>
noremap <silent> <leader>g :YcmCompleter GoToDefinition<CR>
noremap <leader>c :NextColorScheme<CR>

" Press Shift+P while in visual mode to replace the selection without
" overwriting the default register
vmap P p :call setreg('"', getreg('0')) <CR>

" Maps autocomplete to tab
imap <Tab> <C-N>

" Color scheme
if $TERM =~ '256color'
	set t_Co=256
elseif $TERM =~ '^xterm$'
	set t_Co=256
endif
syntax enable
colorscheme badwolf

highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Numbers
set number
set numberwidth=5

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Tags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
set tags=./tags;

let g:fuf_splitPathMatching=1
