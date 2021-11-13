call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" Bindings

:let mapleader = " "

" FZF
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <leader>pf :Files<CR>
nmap <leader>bb :Buffers<CR>
nmap <leader>/ :Rg<CR>
nmap <leader>ft :NERDTreeToggle<CR>

nmap <leader>w <c-w>
nmap <leader>w/ :vsplit<CR>
nmap <leader>w- :hsplit<CR>

" Theme
colorscheme onedark
