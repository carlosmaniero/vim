execute pathogen#infect()

set number
set nowrap
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

colorscheme hybrid

"NERDTree"
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>

"Git Gutter"
let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1
let g:gitgutter_updatetime = 250

"Flake8"
let g:flake8_max_line_length=119

"CSS"
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
