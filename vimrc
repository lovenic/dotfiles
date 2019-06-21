set nocompatible
set number
set tabstop=2
set hlsearch
set autoindent
set shiftwidth=2
set softtabstop=2
set expandtab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'
Plugin 'ngmy/vim-rubocop'
Plugin 'slim-template/vim-slim.git'
Plugin 'dyng/ctrlsf.vim'
Plugin 'morhetz/gruvbox'
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'thoughtbot/vim-rspec'
call vundle#end()
syntax enable

" Nerd tree opened in all tabs by default "
map <C-n> <plug>NERDTreeTabsToggle<CR>
let NERDTreeShowHidden = 1
" End "

" Vim RSpec config "
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" Vim RSpec config end"
" Gruvbox configs "
colorscheme gruvbox
let g:gruvbox_termcolors=16
set background=light
" Gruvbox configs ends "

filetype plugin indent on
" Ignoring files for CtrlP " 
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" NerdTree Toggle Mapping (Ctrl+n)

" Remove beeping "
set belloff=all
" End "
