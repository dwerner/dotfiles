" based on http://github.com/jferris/config_files/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

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

set rtp+=$HOME/.vim/bundle/vundle/
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/

call vundle#rc()

" Bundle list - update with :BundleInstall!
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive.git' 
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-dispatch'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'tfnico/vim-gradle' 
Bundle 'jade.vim' 
Bundle 'walm/jshint.vim'
Bundle 'xolox/vim-reload'
Bundle 'xolox/vim-misc'
Bundle 'wting/rust.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'suan/vim-instant-markdown'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'fatih/vim-go'
Bundle 'valloric/YouCompleteMe'

" let g:instant_markdown_slow = 1
let g:Powerline_symbols = 'fancy'

" ignore rust's stupid recommended styles
let g:rust_recommended_style = 0

let g:ycm_confirm_extra_conf = 0
" setup ycm with rust system src path
let g:ycm_rust_src_path = $RUSTUP_HOME.'/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust'

let g:test_mode = 'test'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

"‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
" Terminal
"______________________________________________________________________________
"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

if has("autocmd")
	if exists("g:did_load_filetypes")
		filetype off
		filetype plugin indent off
	endif
	filetype plugin indent on
	syntax on

	autocmd BufNewFile,BufRead *.txt setfiletype text
	autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

	augroup vimrcEx
		au!
		autocmd BufReadPost *
					\ if line("'\"") > 0 && line("'\"") <= line("$") |
					\   exe "normal g`\"" |
					\ endif
		autocmd BufWritePost .vimrc source $MYVIMRC
	augroup END
else
	set autoindent		" always set autoindenting on
endif " has("autocmd")

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Always display the status line
set laststatus=2

let mapleader=","

noremap <Leader>r :w|!cargo run<CR>
noremap <Leader>t :w|!cargo test<CR>
noremap <Leader>b :w|!cargo build<CR>
noremap <silent> <leader>g :YcmCompleter GoToDefinition<CR>

"‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
" Feature: Disable arrow keys
"______________________________________________________________________________
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Press Shift+P while in visual mode to replace the selection without
" overwriting the default register
vmap P p :call setreg('"', getreg('0')) <CR>

" Maps autocomplete to tab
imap <Tab> <C-N>

imap <C-L> <Space>=><Space>

" Color scheme
if $TERM =~ '256color'
	set t_Co=256
elseif $TERM =~ '^xterm$'
	set t_Co=256
endif
syntax enable

colorscheme bubblegum 
"colorscheme molokai 
"colorscheme smyck 
"colorscheme smp
"colorscheme miko
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
