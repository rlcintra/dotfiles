set nocompatible
filetype off
syntax on
set directory=~/temp// "sets the directory for swap files
set autowrite   "writes changes to file when changing tabs/buffers

" Cursor shape in different modes
" Konsole :
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Identation
filetype plugin indent on
set expandtab "converts tabs to space
set tabstop=4 "sets how many spaces for tabs
set shiftwidth=4 "number of spaces used for auto-indent

" UI
set showcmd "shows information about the current command
set laststatus=2 "displays the status line always

nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>

"Search
set incsearch "show search matches as you type
set ignorecase "ignore case when searching
set smartcase "ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch "highligh search items
nmap \q :nohlsearch<CR>

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

" CtrlP setup
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap ; :CtrlPBuffer<CR>

" nerdtree setup
nmap \e :NERDTreeToggle<CR>

" nerdcommenter setup

" syntastic setup

" vim-surround setup

" vim-colorschemes setup
colorscheme zenburn

" vim-airline setup
let g:airline#extensions#tabline#enabled = 1 "enables the buffer/tab line on the top
let g:airline_powerline_fonts = 1 "required to render powerline fonts
let g:airline#extensions#tabline#buffer_nr_show = 1 "whether buffer names are shown
set ttimeoutlen=10 "removes the delays from going from insert to normal mode

" neocomplcache setup
let g:neocomplcache_enable_at_startup = 1

" vim-gitgutter setup

" Markdown 
au BufRead,BufNewFile *.md set filetype=markdown

" Haskell (comment out next line if support is not required)
so ~/.vimrc_haskell

" Rust
au BufRead,BufNewFile *.rs setfiletype rust

" Make
autocmd FileType make setlocal noexpandtab

