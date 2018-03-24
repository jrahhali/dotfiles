" ========================================
" Plugin Manager
" ========================================

" Download and install plug.vim automatically.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin list.
call plug#begin('~/.vim/plugged')
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
call plug#end()

" ========================================
" Editor look and feel.
" ========================================
filetype on             " Turn filetype detection on.  Other commands will use the loaded filetype detected by this command.
filetype plugin on      " For the detected filetype, load that filetype's plugin script.  These are vim options specific to this type of file.
filetype indent on      " For the detected filetype, load that filetype's indent script.  This is a script to govern indentation rules based on context.
syntax on               " For the detected filetype, load that filetype's syntax.
set cursorline          " Highlight the current line the cursor is on.
set showcmd             " Show the command entered at bottom of screen.
set encoding=utf-8      " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set number              " Display line numbers.
set background=dark
colorscheme gruvbox

" ========================================
" Indentation and Formatting
" ========================================
set backspace=indent,eol,start " Allow backspacing over everything.
set autoindent                 " Copy indentation from current line when starting new line.
set smartindent                " Auto indentiation for c-like languages (blocks, etc).
set expandtab                  " Use spaces to expand a tab in insert mode.
set softtabstop=2              " Number of spaces a tab takes up in insert mode.
set shiftwidth=2               " Number of spaces when a line is shifted in normal mode (>>, <<, ==).

" ========================================
" Searching
" ========================================
set hlsearch    " Highlight all search results.
set ignorecase  " Case insensetive search.
set smartcase   " Case insensetive search except when a capital is involved.

" ========================================
" Remappings
" ========================================
let mapleader=" "
inoremap kj <Esc>       

" ========================================
" incsearch.vim
" Bringing vim search to the 21st century.
" ========================================
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" ========================================
" lightline.vim
" Makes the status line of vim pretty.
" ========================================
" Makes the status line have color.
if !has('gui_running')
    set t_Co=256
endif
set laststatus=2 " Always have a status line.
set noshowmode   " Don't show current mode on last line (lightline takes over).

