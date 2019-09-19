" change leader to ","
let mapleader = ","

" typing behavior
set cursorline
set modeline
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set scrolloff=15
set esckeys
set number

" navigation with ijkl or mouse, insert with ;, escape with ;;
noremap ; i
noremap l l
noremap i k
noremap k j
noremap j h
imap ;; <Esc>
xmap ;; <ESC> 
set mouse=a

"use ctrl-direction for words
noremap <C-l> w
noremap <C-j> B
noremap ' o
noremap o <C-d>
noremap u <C-u>
noremap <C-u> u

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Fast saving
nmap <leader>w :w!<CR>

" Fast quitting
nmap <leader>q :q<CR>
nmap <leader>Q :q!<CR>
nmap <leader>x :x<CR>

" Tabs: like sublime:
nnoremap <C-T> :tabprevious<CR>
nnoremap <C-t> :tabnext<CR>
nnoremap <C-o> :Tex<CR>
nnoremap <C-n> :tabnew 
nnoremap <C-w> :q<CR>
nnoremap <C-W> :q!<CR>

set backspace=2 " make backspace work like most other programs

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
set background=dark " for the dark version

