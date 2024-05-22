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
set timeoutlen=500
set hidden
set splitbelow
set splitright
set expandtab
set visualbell
set textwidth=80
set autochdir
set showmode
set showcmd
set ruler
set laststatus=1
set hlsearch
set belloff=all

" Undo options
set undofile
set undodir=$HOME/.vim/undo
set undolevels=10000
set undoreload=100000

noremap k gk
noremap j gj
noremap Q <Nop>
noremap <F1> <Nop>
noremap <F2> <Nop>
noremap K <C-w><C-w>
noremap <C-P> <C-B>
noremap <Tab> :bn<CR>
command Wall wall
noremap <S-Tab> :bp<CR>
nnoremap _ :Explore<CR>
noremap <F5> @a
inoremap <F12> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
map <F11> <Esc>:call Maximize()<CR>
nmap <C-n> <Esc>:split Makefile<CR>

" Leader commands
let mapleader = " "
map <leader><Space> :noh<CR>
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>k <C-w>k
map <leader>j <C-w>j
map <leader>f :Ack!<space>
map <leader>g :let @/=expand("<cword>")<Bar>wincmd w<Bar>normal n<CR>

" Tabs
noremap <C-1> <Esc>:tabn 1<CR>
noremap <C-2> <Esc>:tabn 2<CR>
noremap <C-3> <Esc>:tabn 3<CR>
noremap <C-4> <Esc>:tabn 4<CR>
noremap <C-5> <Esc>:tabn 5<CR>
noremap <C-6> <Esc>:tabn 6<CR>
noremap <C-7> <Esc>:tabn 7<CR>
noremap <C-8> <Esc>:tabn 8<CR>
noremap <C-9> <Esc>:tablast<CR>
noremap <C-Tab> <Esc>:tabn<CR>
noremap <C-S-Tab> <Esc>:tabp<CR>
noremap <C-S-PageUp> <Esc>:tabm -1<CR>
noremap <C-S-PageDown> <Esc>:tabm +1<CR>

"https://stackoverflow.com/questions/20979403/how-to-add-total-line-count-of-file-to-vim-status-bar
set statusline =%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" Colors for statusline
hi User1 guifg=#eea040 guibg=#444444
hi User2 guifg=#dd3333 guibg=#444444
hi User3 guifg=#ff66ff guibg=#444444
hi User4 guifg=#a0ee40 guibg=#444444
hi User5 guifg=#eeee40 guibg=#444444

" Plugins
set nocompatible               " turns off legacy vi mode
filetype off                   " required!
set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc()
filetype plugin indent on     " required!

" Ack
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ack_autoclose = 1

" Gui options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guitablabel=%t "tabs only display filename, not complete path
set guifont=Consolas:h10.8:cANSI

function Maximize()
   if !exists("g:maximized")
      let g:maximized=0
   endif
   if (g:maximized)
      let g:maximized=0
      set showtabline=1
   else
      let g:maximized=1
      set showtabline=0
      redraw
   endif
   call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endfunction

" LaTeX in Markdown
function! MathAndLiquid()
    "" Define certain regions
    " Block math. Look for "$$[anything]$$"
    syn region math start=/\$\$/ end=/\$\$/
    " inline math. Look for "$[not $][anything]$"
    syn match math_block '\$[^$].\{-}\$'

    " Liquid single line. Look for "{%[anything]%}"
    syn match liquid '{%.*%}'
    " Liquid multiline. Look for "{%[anything]%}[anything]{%[anything]%}"
    syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
    " Fenced code blocks, used in GitHub Flavored Markdown (GFM)
    syn region highlight_block start='```' end='```'

    "" Actually highlight those regions.
"    hi link math Statement
"    hi link liquid Statement
"    hi link highlight_block Function
    hi link math_block Boolean
endfunction

" Call everytime we open a Markdown file
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown call MathAndLiquid()
