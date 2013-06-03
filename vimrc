" A lot of this was taken from:
" https://github.com/skwp/dotfiles/blob/master/vimrc 

" vim > vi
set nocompatible

" Pathogen Settings
execute pathogen#infect()

" General settings
set number				                "Line numbers
set backspace=indent,eol,start		"Allow backspaces in insert mode
set showcmd				                "Show incomplete cmds down the bottom
set history=1000			            "History <3
set showmode				              "Show current mode down the bottom
set gcr=a:blinkon0			          "Disable cursor blink
set visualbell				            "No sounds
set autoread				              "Reload files when changed outside vim
syntax on				                  "Turn on syntax highlighting

" Allows vim to act like all other edits - buffers
" can exist in the background
set hidden

" Turn off swap file creation
set noswapfile
set nobackup
set nowb

" Persistent undo, stores history in a file
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set nowrap				                "Don't wrap lines
set linebreak				              "Wrap lines at convenient points

" Folds
set foldmethod=indent			        "Fold based on indent
set foldnestmax=3			            "Deepest fold is 3 levels
set nofoldenable			            "Don't fold by default

" Completion
set wildmode=list:longest
set wildmenu				              "Enable ctrl-n and ctrl-p to scroll through matches
" set wildignore - things to ignore while autocompleting go here

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
colorscheme solarized
set background=dark
