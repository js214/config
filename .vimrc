syntax on
colorscheme torte

cd ~/Documents/temp
nnoremap _ :Explore<CR>
let g:netrw_banner = 0

set number
set shiftwidth=3
set ignorecase
set autoindent
set incsearch
set lbr
set timeoutlen=0
set hidden
set splitbelow
set splitright
set expandtab
set visualbell
set textwidth=80
set autochdir

noremap <C-P> <C-B>
noremap k gk
noremap j gj
noremap Q <Nop>
noremap K <C-w><C-w>
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <F1> <Esc>:tabp<CR>
noremap <F2> <Esc>:tabn<CR>
noremap <F5> @a
inoremap <F12> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
noremap <F12> ggg?G

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

au GUIEnter * simalt ~x

" Plugins
set nocompatible               " turns off legacy vi mode
filetype off                   " required!
set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc()
Plugin 'mileszs/ack.vim'
filetype plugin indent on     " required!

" Ack options
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ack_autoclose = 1
noremap <C-d> :Ack!<space>

" search for current word in the other window
" https://superuser.com/questions/80360/in-vim-is-there-a-way-to-search-for-a-word-in-a-different-window
:nnoremap <C-S> :let @/=expand("<cword>")<Bar>wincmd w<Bar>normal n<CR>
