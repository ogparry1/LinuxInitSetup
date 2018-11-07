" Environmental Variables "
let mapleader = " "

" Plugins "
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':	'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'valloric/youcompleteme'
Plug 'altercation/vim-colors-solarized'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'chiel92/vim-autoformat'
call plug#end()

" Theming "
colorscheme elflord
set number
set tabstop=8 
set shiftwidth=4 
set smartindent autoindent
set wildmode=longest,list,full
set wildmenu

" HotKeys "
map <Leader>n :NERDTreeToggle<CR>
map <Leader>s :source ~/.nvimrc<CR>

" Aliases "
"command E :new ~/.nvimrc
"cnoreabbrev ealias :E
