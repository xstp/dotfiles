call plug#begin()

" Make sure you use single quotes
Plug 'dracula/vim', { 'as': 'dracula' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
"
call plug#end()

colorscheme dracula

set number
syntax on
set mouse=a
set ignorecase
set hid
set cmdheight=1
set ruler
set noerrorbells
set novisualbell
set nobackup
set nowb
set noswapfile

" comment below to enable tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set smartindent
set showmatch
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

