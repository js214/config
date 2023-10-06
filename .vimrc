syntax on
colorscheme torte
cd ~/Documents/temp
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
set showmode
set ruler
set laststatus=1
set undofile
set undodir=$HOME/.vim/undo
set undolevels=10000
set undoreload=100000
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guitablabel=%t "tabs only display filename, not complete path
set guifont=Consolas:h10.8:cANSI

noremap k gk
noremap j gj
noremap Q <Nop>
noremap <F1> <Nop>
noremap <F2> <Nop>
noremap K <C-w><C-w>
noremap <C-P> <C-B>
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
nnoremap _ :Explore<CR>
noremap <C-Tab> <Esc>:tabn<CR>
noremap <C-S-Tab> <Esc>:tabp<CR>
noremap <F5> @a
inoremap <F12> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
map <F11> <Esc>:call Maximize()<CR>
nnoremap <C-S> :let @/=expand("<cword>")<Bar>wincmd w<Bar>normal n<CR>

set statusline =%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number

hi User1 guifg=#eea040 guibg=#444444
hi User2 guifg=#dd3333 guibg=#444444
hi User3 guifg=#ff66ff guibg=#444444
hi User4 guifg=#a0ee40 guibg=#444444
hi User5 guifg=#eeee40 guibg=#444444

function Maximize()
   call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
   if !exists("g:maximized")
      let g:maximized=0
   endif
   if (g:maximized)
      let g:maximized=0
      set showtabline=1
   else
      let g:maximized=1
      set showtabline=0
   endif
endfunction

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
