"----------------------------------------------------------------------
" Yleiset asetukset
"----------------------------------------------------------------------

" Vim Colorscheme ~/vim kansioon

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible			" 

execute pathogen#infect()

" Set Master file to read only
"set nomodifiable

" Automagically change your current directory to match the location of the current file
set autochdir

" Set encoding
set encoding=utf-8

" Enable syntax highlighting
syntax on

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
" filetype indent plugin on

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
set nomodeline

" Better command-line completion
set wildmenu

" Complete till longest common string.
set wildmode=list:longest


" Show partial commands in the last line of the screen
set showcmd

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
"set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Stop certain movements from always going to the first character of a line.
" " While this behaviour deviates from that of Vi, it does what most users
" " coming from other editors would expect.
set nostartofline

" Use visual bell instead of beeping when doing something wrong
" set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" " is unset, this does nothing.
" set t_vb=

" Display line numbers on the left
set number 

" 
set relativenumber  

" Set tab to 4 lines instead default 8
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab

" Highlight searches
set hlsearch
set incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
set gdefault
set showmatch

" Improves smoothness of scrolling when there are multiple windows and the terminal does not support a scrolling region
set ttyfast

" undofile tells Vim to create <FILENAME>.un~ files whenever you edit a file.
" These files contain undo information so you can undo previous actions even
" after you close and reopen a file.
set undofile

" If in Insert, Replace or Visual mode put a message on the last line. Use the 'M' flag in 'highlight' to set the type of 
" highlighting for this message.
set showmode

" When on, lines longer than the width of the window will wrap and displaying continues on the next line. 
" colorcolumn shows colored column so you can see when you write too long line of code
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=100

" Don't create backups & swap files
set nobackup 
set nowritebackup
" set noswapfile

" Set working directory
" set directory=/home/rolle/.vim/swap

" Save x lines of command history
set history=50

" enable setting title
set title 

" How many times you can use undo 
set undolevels=200

" Determines the number of context lines you would like to see above and below
" the cursor.
set scrolloff=5  

" Enable filetype-specific indenting
filetype indent on

" required for vundle
filetype plugin indent on 

" required for vundle
filetype off 

"------------------------------------------------------------------------
" Plugins & colorscheme
"------------------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)i

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" A tree explorer plugin for Vim
Plugin 'scrooloose/nerdtree'
autocmd vimenter * if !argc() | NERDTree | endif " Start NERDtree if no files specified at start

" one colorscheme pack to rule them all!
Plugin 'flazz/vim-colorschemes'

" Better defaults
Plugin 'tpope/vim-sensible'

" lean & mean statusbar for vim
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{strftime("%R")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

" A code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'

" better searching 
Plugin 'mileszs/ack.vim'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert
" completion needs (:help ins-completion).
Plugin 'ervandew/supertab'

" perl syntax & helper files
Plugin 'vim-perl/vim-perl'

call vundle#end() 

"make vim use 256colors
set t_Co=256

" Vim colorsheme
" colorscheme molokai
" colorscheme jellybeans
" colorscheme distinguished
" colorscheme zenburn
" colorscheme github
" colorscheme codeschool
colorscheme twilight256
" colorscheme mirodark

"-----------------------------------------------------------------------
" Keybinds
"-----------------------------------------------------------------------

" Higlight current line & set highlight color
set nocursorline
"hi CursorLine term=none cterm=none ctermbg=3

" Takes effect only on gvim
set guioptions-=T                " poista työkalurivi näkyvistä
set guioptions-=r                " poista vierityspalkki näkyvistä
set guioptions-=e                " poista välilehdet näkyvistä
"set guioptions-=m               " poista valikot näkyvistä

" Set leader key
let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Get rid of that stupid goddamned help key that you will invaribly hit constantly while aiming for escape
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" open new vertical window
nnoremap <leader>w <C-w>v<C-w>l

" Commands to move around split screens (ctrl + hjkl)
nnoremap <C-h> <C-w>h " right window
nnoremap <C-j> <C-w>j " bottom window 
nnoremap <C-k> <C-w>k " left window
nnoremap <C-l> <C-w>l " top window

" Switch between tabs
"noremap <><left> :tabprevious<CR>
"noremap <><right> :tabnext<CR>

" Muut
nnoremap <leader>a :Ack
