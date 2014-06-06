set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'flazz/vim-colorschemes'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

" Dependency of neco-ghc
Bundle 'Shougo/neocomplcache.vim'
Bundle 'airblade/vim-gitgutter'

Bundle 'dag/vim2hs'
Bundle 'merijn/haskellFoldIndent'
Bundle 'eagletmt/neco-ghc'
Bundle 'eagletmt/ghcmod-vim'

" Dependency of ghcmod-vim
Bundle 'eagletmt/tinytest'
Bundle 'Shougo/vimproc'

filetype plugin indent on

set et "expandtab: converts tabs to space
set ts=4 "tabstop: sets how many spaces for tabs
set sw=4 "shiftwidth: number of spaces used for autoident

set laststatus=2 "display the status line always

nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>

set incsearch
set ignorecase
set smartcase
set hlsearch
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

" neocomplcache setup
let g:neocomplcache_enable_at_startup = 1

" vim-gitgutter setup

" Markdown 
au BufRead,BufNewFile *.md set filetype=markdown

" Haskell

" Setup
" Assure you have installed Vundle (bin/installVundle.sh)
" > cabal install hlint ghc-mod
" > cd ~/.vim/bundle/vimproc && make -f make_unix.mak
"
let $PATH = $PATH . ':' . expand("~/.cabal/bin")

au FileType haskell noremap <buffer> <F2> :GhcModType<CR>
au FileType haskell noremap <buffer> <silent> <F3> :GhcModTypeClear<CR>
au FileType haskell setlocal number
au FileType haskell setlocal foldmethod=manual
au FileType haskell setlocal omnifunc=necoghc#omnifunc

au BufNewFile,BufRead *.dump-cmm set filetype=c
au BufNewFile,BufRead *.hs,*.hsc,*.lhs,*.dump-simpl set filetype=haskell
au BufNewFile,BufRead *.lhs set syntax=lhaskell

autocmd BufWritePost *.hs GhcModCheckAndLintAsync
autocmd BufWritePost *.hsc GhcModCheckAndLintAsync

let g:syntastic_haskell_checkers = ["ghc_mod","hlint"]

" Rust
au BufRead,BufNewFile *.rs setfiletype rust

" Make
autocmd FileType make setlocal noexpandtab

