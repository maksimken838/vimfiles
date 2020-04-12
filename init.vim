"base config
set number
set incsearch
set nohlsearch
set ignorecase
set smartcase
set mouse=a
set mousemodel=popup
set cursorline
set ignorecase
syntax on
"let python_highlight_all=0
"let python_highlight_space_errors=0
"let python_highlight_numbers=1
"let python_highlight_builtins=1
"let python_highlight_exceptions=1
"let g:indentLine_char='|'
let g:indentLine_char='▏'
"set cursorline
"`¦`, `┆`, `│`, `⎸`, `▏`
"let &t_SI = "\<Esc>]50;CursorShape=1\x7" that's only for vim
"let &t_SR = "\<Esc>]50;CursorShape=2\x7" that's only for vim
"let &t_EI = "\<Esc>]50;CursorShape=0\x7" that's only for vim
"set list
"set lcs=eol:↵
"set lcs=tab:\|\ 
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set autoindent
set scrolloff=3
"filetype indent on
"filetype on
"filetype plugin on

call plug#begin('~/.local/share/nvim/plugged')
Plug 'cskeeters/vim-smooth-scroll'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
"Plug 'vim-python/python-syntax'
"Plug 'nvie/vim-flake8'

"Plug 'ayu-theme/ayu-vim'
"Plug 'micke/vim-hybrid'
"Plug 'arcticicestudio/nord-vim'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'mhartington/oceanic-next'

"Plug 'vim-syntastic/syntastic'
"Plug 'easymotion/vim-easymotion'
Plug 'numirias/semshi', {'do': 'updateremoteplugins'}
"Plug 'jistr/vim-nerdtree-tabs'

"Plug 'klen/python-mode'

"Plug 'davidhalter/jedi-vim'
"Plug 'rosenfeld/conque-term'
call plug#end()

"colorscheme
set termguicolors
let g:airline_powerline_fonts=1
let g:gruvbox_italic=1
let g:gruvbox_bold=1
colorscheme gruvbox
let g:airline_integration=1

"basic mappings
inoremap <Tab> <Esc>
inoremap <Esc> <Tab>
nnoremap ene :w<CR>

"tab mappings
nnoremap . :tabn<CR>
nnoremap , :tabp<CR>
nnoremap > :$tabnew 
nnoremap < :tabc<CR>

"fold mappings
nnoremap <space> za
"vnoremap <space> zf
"running code mappings
"map <F5> :w<CR>:term python3 %<CR><i>
"map <F6> :w<CR>:term g++ % && ./a.out<CR>i
"map! <F5> <Tab>:w<CR>:vsp<CR>:term python3 %<CR>i
"map! <F6> <Tab>:w<CR>:vsp<CR>:term g++ % && ./a.out<CR>i
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"nerdtree mappings
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"split navigation mappings
nnoremap <C-W> <C-W><C-J>
nnoremap <C-W> <C-W><C-J>
nnoremap <C-W> <C-W><C-J>
nnoremap <C-W> <C-W><C-J>

set foldtext=FoldText()
set fillchars=fold:\ 
function! FoldText()
    return getline(v:foldstart)
endfunction
