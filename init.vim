"base config
set number
set incsearch
syntax enable

"plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"mappings
"the next line only for my bt keyboard, cause it sends ` instead of <Esc>
inoremap ` <Tab>
inoremap <Tab> <Esc>
inoremap <Esc> <Tab>
map ene :w<CR>
map <C-1> :set background=dark<CR>
map <C-2> :set background=light<CR>
"map <C-3> :let g:gruvbox_contrast=('soft')
"map <C-4> :let g:gruvbox_contrast=('meduim')
"map <C-5> :let g:gruvbox_contrast=('hard')

"gruvbox config
set termguicolors
colorscheme NeoSolarized
let g:neosolarized_contrast = "high"
"let g:gruvbox_contrast_dark=('hard')
"let g:gruvbox_contrast_light=('medium')
let g:neosolarized_contrast="high"
let g:airline_theme=('solarized')
set background=dark
