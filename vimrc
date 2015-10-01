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
" colorscheme evening
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
map! <C-Down> <ESC>:tabnext<CR>i
map! <C-Up> <ESC>:tabprevious<CR>i
map <C-Down> <ESC>:tabnext<CR>
map <C-Up> <ESC>:tabprevious<CR>

"Git commands"
map <F2> :Gstatus<CR>
map <F3> :Git add .<CR><CR>
map <F4> :Git add %<CR><CR>
map <F5> :Gpull<CR>
map <F6> :Gcommit<CR>i
map <F7> :Gpush<CR>


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
"Colors
hi LineNr ctermfg=7
hi CursorLineNr ctermfg=15
hi CursorLine ctermbg=8 ctermfg=None cterm=None
hi TabLine ctermbg=None cterm=None
hi TabLineFill ctermbg=None cterm=None
hi TabLineSel ctermbg=7 ctermfg=232 cterm=None
hi VertSplit cterm=None ctermfg=232
hi String ctermfg=38
hi Statement ctermfg=202
hi Constant ctermfg=196
hi Type ctermfg=7
hi Pmenu ctermbg=0 ctermfg=15
hi PmenuSel ctermbg=23 ctermfg=15
hi PmenuSbar ctermbg=247
hi Function ctermfg=250
hi Directory ctermfg=7
hi MoreMsg ctermfg=2
hi Question ctermfg=2
"hi airline_x ctermfg=81
"hi airline_x_bold ctermfg=81
"hi airline_c ctermfg=81
"hi airline_c_bold ctermfg=81
"hi airline_z ctermbg=23 ctermfg=15
"hi airline_z_bold ctermbg=23 ctermfg=15
"hi airline_z_red ctermbg=23 ctermfg=15
"hi airline_a ctermbg=23 ctermfg=15
"hi airline_a_bold ctermbg=23 ctermfg=15
"hi airline_a_red ctermbg=23 ctermfg=15

set fillchars=vert:\ 
 
" Cursor line
set cursorline
" set cursorcolumn 


"Auto close doc
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" #autocmd InsertLeave * if pumvisible() == 0|pclose|endif
