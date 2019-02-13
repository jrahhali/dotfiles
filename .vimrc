" ========================================
" Plugin Manager
" ========================================

" Download and install plug.vim automatically if not installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin list.
call plug#begin('~/.vim/plugged')
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
"Plug 'justinmk/vim-sneak'
"Plug 'easymotion/vim-easymotion'
call plug#end()

" ========================================
" Editor look and feel.
" ========================================
" For the detected filetype, load that filetype's plugin script.  These are vim options  pecific to this type of file.
" For the detected filetype, load that filetype's indent script.  This is a script to govern indentation rules based on context.
filetype plugin indent on
" For the detected filetype, load that filetype's syntax.
syntax on
" Highlight the current line the cursor is on.
set cursorline
" Show the command entered at bottom of screen.
set showcmd
" The encoding displayed.
set encoding=utf-8
" The encoding written to file.
set fileencoding=utf-8
" Display line numbers.
set number
" Enable mouse support.
set mouse=a
set background=dark
colorscheme gruvbox
" Start in insert mode
" startinsert
" Allow the cursor to move ontop of the newline character at the end of a line
set virtualedit=onemore
" Start scrolling the page up/down when cursor is 10 lines away from the
" top/bottom
set scrolloff=10
" By default, when pressing left/right cursor keys, Vim will not move to the 
" previous/next line after reaching first/last character in the line. 
" This can be quite annoying for new users. Fortunately this behaviour can be 
" easily changed by putting this in your vimrc file:   
" left/right arrow keys, h,l keys, and backspace key
set whichwrap+=<,>,h,l,[,],<bs>

" ========================================
" Indentation and Formatting
" ========================================
" Allow backspacing over everything.
set backspace=indent,eol,start
" Copy indentation from current line when starting new line.
set autoindent
" Auto indentiation for c-like languages (blocks, etc).
set smartindent
" Use spaces to expand a tab in insert mode.
set expandtab
" Number of spaces a tab take in normal mode (>>, <<, ==).
set shiftwidth=2

" ========================================
" Searching
" ========================================
" Highlight all search results.
set hlsearch
" Case insensetive search.
set ignorecase
" Case insensetive search except when a capital is involved.
set smartcase

" ========================================
" Remappings
" ========================================
"let mapleader=" "
"inoremap kj <Esc>
" Swap ; and : keys
nnoremap ; :
nnoremap : <Nop>
" Enter in normal mode inserts aine break
nnoremap <enter> i<enter><esc>
" Stop vim from 'moving the cursor backwards' when going from insert mode to
" normal mode. Here the Esc key is overloaded in Insert mode to additionally run the ``^` 
" command which moves the cursor to the position where it was the last time 
" Insert mode was stopped. Since in this mapping it is executed immediately 
" after leaving Insert mode with Esc, the cursor is left one character to the right as compared to its position with default behavior.
inoremap <silent> <Esc> <Esc>`^
" Space in normal mode will insert a space
nnoremap <space> i<space><Esc>l
" Backspace in normal mode will delete a word.
nnoremap <bs> db


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
" Always have a status line.
set laststatus=2
" Don't show current mode on last line (lightline takes over).
set noshowmode

" ========================================
" CtrlP
" Fuzzy search.
" ========================================
" Show hidden files.
let g:ctrlp_show_hidden = 1
