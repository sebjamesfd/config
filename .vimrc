set nocompatible              " be iMproved, required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
Plugin 'nvie/vim-flake8'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mileszs/ack.vim'
Plugin 'tyok/nerdtree-ack'
Plugin 'elzr/vim-json.git'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'vimwiki/vimwiki'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'rodjek/vim-puppet'
"Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/fzf'
Plugin 'alfredodeza/pytest'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-salve'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

syntax enable
set background=dark
colorscheme solarized

let g:solarized_termcolors=256


set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spa

:set hlsearch

" Set column color width to 80
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%80v.\+/

" Gundo undo history
nnoremap <F5> :GundoToggle<CR>
let g:gundo_width = 90 
let g:gundo_close_on_revert = 1

let g:NERDTreeWinSize = 28 

"Snippet
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" " CTRLP
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|pyc)$',
    \ }

" " Syntastic
let g:syntastic_python_checkers = ['flake8']

nmap oo o<Esc>k 
nmap OO O<Esc>j

" " FZF
map <C-p> :FZF<CR>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Pytest
nmap <silent><Leader>f <Esc>:Pytest file<CR>
nmap <silent><Leader>c <Esc>:Pytest class<CR>
nmap <silent><Leader>m <Esc>:Pytest method<CR>

" Clojure fireplace
nnoremap <C-e> :Eval<CR>
nnoremap E :%Eval<CR>
