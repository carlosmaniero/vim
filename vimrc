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
syntax enable

colorscheme hybrid
" colorscheme harlequin 
" colorscheme badwolf
" colorscheme ingretu

" Fix backspace
set backspace=indent,eol,start


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

"TagBar"
map <F8> :TagbarToggle<CR><CR>

"Alternate tab"
map <C-Right> :tabnext<CR><CR>
map <C-Left> :tabprevious<CR><CR>

"Git commands"
map <F3> :Git add .<CR><CR>
map <F4> :Git add %<CR><CR>
map <F5> :Gpull<CR><CR>
map <F6> :Gcommit<CR><CR>
map <F7> :Gpush<CR><CR>


"HTML"
autocmd BufNewFile,BufRead *.html set filetype=htmldjango

"Transparency colors"
hi Normal ctermbg=NONE
hi NonText ctermbg=NONE
hi SpecialKey ctermbg=NONE
hi Type ctermbg=NONE
hi Function ctermbg=NONE
hi Statement ctermbg=NONE
hi Comment ctermbg=None
hi Ignore ctermbg=None
hi Directory ctermbg=None
hi Question ctermbg=None
hi MoreMsg ctermbg=None
hi String ctermbg=None
hi LineNr ctermfg=7
hi CursorLineNr ctermfg=15

" Cursor line
set cursorline
" set cursorcolumn 


"Auto close doc
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" #autocmd InsertLeave * if pumvisible() == 0|pclose|endif
