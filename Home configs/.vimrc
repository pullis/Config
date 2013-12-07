"----------------------------------------------------------------------
"yleiset asetukset
"----------------------------------------------------------------------

set nocompatible                  " käytä vim, ei vi
set encoding=utf-8                " aseta tiedoston encoodaus
syntax on                         " color syntax on
set antialias                     " antialisointi
set number                        " näytä rivinumero
set relativenumber                " näytä kuinka monta riviä on nykyiseltä riviltä ylös ja alas 
set nobackup                      " ei varmuuskopiota
"set backup                       " aseta varmuuskopiointi
"set backupdir=~/.vim/backup      " varmuuskopioinnin kansio
"set directory=~/.vim/tmp         " aseta työhakemisto 
set noswapfile                    " ei swap tiedostoa
set history=100                   " tallenna komentohistoria
set title                         " näytä taskbarissa tiedostonimi
set background=dark               " tausta
set undolevels=1000               " 1000 kumoamista
set noerrorbells                  " ei error ääniä
set visualbell                    " ei error ääniä
set t_vb=                         " ei error ääniä 
set scrolloff=5                   " pidä ainakin 5 riviä 
filetype on                       " Enable filetype detection
filetype indent on                " Enable filetype-specific indenting
colorscheme molokai               " vimin väriteema

"-----------------------------------------------------------------------
"liikkuminen, etsiminen ja hakutulokset
"-----------------------------------------------------------------------

set hlsearch                      " väritä hakutulokset
set incsearch                     " incremental searching
set ignorecase                    " älä välitä kirjainkoosta haettaessa
set smartcase                     " ... jollei ole ainakin 1 iso kirjain
set cul                           " väritä nykyinen rivi
"hi CursorLine term=none cterm=none ctermbg=3  " aseta väri

"-----------------------------------------------------------------------
" GUI
"-----------------------------------------------------------------------

set guioptions-=T                " poista työkalurivi näkyvistä
set guioptions-=r                " poista vierityspalkki näkyvistä
set guioptions-=e                " poista välilehdet näkyvistä
"set guioptions-=m               " poista valikot näkyvistä



