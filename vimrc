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
set smartindent
set mouse=a

" set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
" set guigont=Droid\ Sans\ Mono\ for\ Powerline\ 11
set guifont=Meslo\ LG\ S\ for\ Powerline
set t_Co=256
let g:airline_powerline_fonts=1

" colorscheme hybrid
colorscheme harlequin 

"NERDTree"
let g:NERDTreeWinPos = "right"
map <C-t> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

"Git Gutter"
let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1
let g:gitgutter_updatetime = 250

"Python Syntax"
autocmd FileType python
    \ let python_highlight_all = 1 |
    \ :Python2Syntax

"Flake8"
let g:flake8_max_line_length=119

"Completation"
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"HTML"
autocmd BufNewFile,BufRead *.html set filetype=htmldjango

"Paste"

function DoPaste()
    set 
endfunction

map <C-v> call DoPaste()
