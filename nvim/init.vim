set number
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set splitright
set clipboard+=unnamedplus
set hls
set nowrap
set whichwrap=b,s,[,],<,>
set wildmode=list:longest
set backspace=indent,eol,start
set title
" set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set number relativenumber
set splitbelow
let mapleader = ","


packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'https://github.com/dense-analysis/ale'
Jetpack 'junegunn/fzf.vim'
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' }
Jetpack 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Jetpack 'vlime/vlime', { 'rtp': 'vim' }
Jetpack 'dracula/vim', { 'as': 'dracula' }
Jetpack 'tpope/vim-fireplace', { 'for': 'clojure' }
call jetpack#end()
