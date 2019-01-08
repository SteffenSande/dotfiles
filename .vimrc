set nocompatible              " be iMproved, required
set spell spelllang=en_us
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'davidhalter/jedi-vim'
Plugin 'w0rp/ale'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'valloric/youcompleteme'
Plugin 'altercation/vim-colors-solarized'
" Steffen's personal plugin list
Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
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


" Mappings
map <C-n> :NERDTreeToggle<CR>


" Variables for Plugins
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"


" Options for vim
syntax enable
set number relativenumber



" Python options for vim that are kinda sweet for more languages as well
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch
let python_highlight_all = 1
set nobackup
set nowritebackup
set noswapfile
set clipboard=unnamed


" YouCompleteMe
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-space>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set noerrorbells visualbell t_vb=
let g:tex_stylish = 1
let g:tex_flavor = 'latex'
let g:vimtex_fold_enabled = 1
let g:vimtex_format_enabled = 1
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_automatic = 0
let g:vimtex_view_forward_search_on_start = 0
let g:vimtex_quickfix_open_on_warning = 0

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'python': ['yapf', 'isort'],
      \ }
let g:ale_fix_on_save = 1


" Solarized options

set background=dark
colorscheme solarized
let g:solarized_termcolors=   256
let g:solarized_termtrans =   0
let g:solarized_degrade   =   0
let g:solarized_bold      =   1
let g:solarized_underline =   1
let g:solarized_italic    =   1
let g:solarized_contrast  =   "normal"
let g:solarized_visibility=   "normal"
let g:solarized_hitrail   =   0
let g:solarized_menu      =   1

"Mappings

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


inoremap <C-S> <ESC>:w<CR>i
nnoremap <C-S> :w<CR>

inoremap <C-Q> <ESC> :wq<CR>
nnoremap <C-Q> :wq<CR>
