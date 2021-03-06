" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

"行番号の表示
set number

"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

"Mac ClipBoard
vmap <silent> sy :!pbcopy; pbpaste<CR>
map <silent> sp <esc>o<esc>v :!pbpaste<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf8
set expandtab
set tabstop=4
set softtabstop=4
syntax on

set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" python plguin
" Plugin 'davidhalter/jedi-vim.git'
" Plugin 'andviro/flake8-vim'
" Plugin 'hynek/vim-python-pep8-indent'
" Plugin 'jmcantrell/vim-virtualenv'

" common
Plugin 'project.tar.gz'

" coffeescript
Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype off
syntax enable

