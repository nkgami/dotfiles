set nocompatible
set backspace=start,eol,indent
set whichwrap=b,s,[,],<,>,~
set mouse=
set cindent
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932,ucs-bom,default,latin1
set fileformats=unix,dos,mac
set tabstop=2
set shiftwidth=2

set autoindent
set smartindent
syntax on
set nohlsearch
set cursorline
highlight StatusLine ctermfg=black ctermbg=gray
highlight CursorLine ctermfg=none ctermbg=darkgray cterm=none
highlight MatchParen ctermfg=darkblue ctermbg=darkgray
highlight Comment ctermfg=DarkGreen ctermbg=NONE
highlight Directory ctermfg=DarkGreen ctermbg=NONE
set laststatus=2
set statusline=%F%r%h%=
set number
set incsearch
set ignorecase
set wildmenu wildmode=list:full
nmap <silent> <Tab> 15<Right>
vmap <silent> <Tab> <C-o>15<Right>
nmap <silent> <S-Tab> 15<Left>
vmap <silent> <S-Tab> <C-o>15<Left>
nmap <silent> <C-n>	 :update<CR>:bn<CR>
imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>

set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%

"---------------------------
" Start Neobundle Settings.
"---------------------------
" set dir for neobundle
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" add bundles from here"
NeoBundle "sudar/vim-arduino-syntax"
" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" molokai
NeoBundle 'tomasr/molokai'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'bronson/vim-trailing-whitespace'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

"colorscheme default
if &term =~ "xterm-256color" || "screen-256color"
	set t_Co=256
	set t_Sf=[3%dm
	set t_Sb=[4%dm
elseif &term =~ "xterm-color"
	set t_Co=8
	set t_Sf=[3%dm
	set t_Sb=[4%dm
endif

"syntax enable
"hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
