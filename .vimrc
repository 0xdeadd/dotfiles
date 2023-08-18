set nocompatible              " Required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (Example of adding a plugin)
Plugin 'tpope/vim-fugitive'
Plugin 'stephpy/vim-yaml'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " Required
filetype plugin indent on    " Required


" Enable syntax highlighting
syntax on

" Set the number of lines of history
set history=1000

" Set the number of lines of command-line history
set cmdheight=2

" Enable line numbers
set number
set relativenumber

" Set the tab width
set tabstop=4

" Set the shift width
set shiftwidth=4

" Set the soft tabstop
set softtabstop=4

" Enable auto-indentation
set autoindent

" Enable smart indentation
set smartindent

" Enable file type detection
filetype on

" Enable file type plugins
filetype plugin on

" Enable file type indent plugins
filetype indent on

" Set the backup directory
set backupdir=~/.vim/backup

" Set the directory for swap files
set directory=~/.vim/swap

" Set the undo directory
set undodir=~/.vim/undo
