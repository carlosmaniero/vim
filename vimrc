execute pathogen#infect()

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
set number
set colorcolumn=80
set modifiable

" set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
" set guigont=Droid\ Sans\ Mono\ for\ Powerline\ 11
set guifont=Meslo\ LG\ S\ for\ Powerline
set t_Co=256
let g:airline_powerline_fonts=1
syntax enable

" colorscheme hybrid
" colorscheme badwolf
" colorscheme evening
" colorscheme harlequin 
" colorscheme badwolf
" colorscheme ingretu
" colorscheme hilal
colorscheme base16-ir-black

" Fix backspace
set backspace=indent,eol,start

"Jedi"
let g:jedi#use_tabs_not_buffers = 1

"Git Gutter"
let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1
let g:gitgutter_updatetime = 250
autocmd VimEnter * GitGutterEnable


"NERDTree"
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeIgnore = ['\.pyc$']
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeMinimalUI = 1

"On startup focus on buffer
function! s:FocusOnBuffer()
  if winnr("$") != 2
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    wincmd l
  endif
endfunction

augroup FocusOnBuffer
  au!
  autocmd VimEnter * NERDTreeMirrorOpen
  autocmd VimEnter * call s:FocusOnBuffer()
augroup END

"Clone NerdTree if no more windows opened
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END


function s:CustomizeColors()
    hi TabLineSel ctermbg=7 ctermfg=0
    hi ColorColumn ctermbg=233
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
endfunction

autocmd VimEnter * call s:CustomizeColors()
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
map! <C-Down> <ESC>:tabnext<CR> :NERDTreeMirror<CR>i
map! <C-Up> <ESC>:tabprevious<CR> :NERDTreeMirror<CR>i
map <C-Down> <ESC>:tabnext<CR> :NERDTreeMirror<CR>
map <C-Up> <ESC>:tabprevious<CR> :NERDTreeMirror<CR>

map! <C-a> <ESC>:GitGutterToggle<CR>:set invnumber<CR>i
map <C-a> <ESC>:GitGutterToggle<CR>:set invnumber<CR>

map! <C-t> <ESC>:NERDTreeTabsToggle<CR>i
map <C-t> <ESC>:NERDTreeTabsToggle<CR><CR>

"Git commands"
map <F2> :Gstatus<CR>
map <F3> :Git add .<CR><CR>
map <F4> :Git add %<CR><CR>
map <F5> :Gpull<CR>
map <F6> :Gcommit<CR>i
map <F7> :Gpush<CR>


"HTML"
autocmd BufNewFile,BufRead *.html set filetype=htmldjango

"MarkDown"
autocmd BufNewFile,BufRead *.md set filetype=markdown

"Transparency colors"
"hi Normal ctermbg=NONE
"hi NonText ctermbg=NONE
"hi SpecialKey ctermbg=NONE
"hi Type ctermbg=NONE
"hi Function ctermbg=NONE
"hi Statement ctermbg=NONE
"hi Comment ctermbg=None
"hi Ignore ctermbg=None
"hi Directory ctermbg=None
"hi Question ctermbg=None
"hi MoreMsg ctermbg=None
"hi String ctermbg=None
"Colors
"hi LineNr ctermfg=7
"hi CursorLineNr ctermfg=15
"hi CursorLine ctermbg=8 ctermfg=None cterm=None
"hi TabLine ctermbg=None cterm=None
"hi TabLineFill ctermbg=None cterm=None
"hi TabLineSel ctermbg=7 ctermfg=232 cterm=None
"hi VertSplit cterm=None ctermfg=None
"hi String ctermfg=38
"hi Statement ctermfg=202
"hi Constant ctermfg=196
"hi Type ctermfg=7
"hi Pmenu ctermbg=0 ctermfg=15
"hi PmenuSel ctermbg=23 ctermfg=15
"hi PmenuSbar ctermbg=247
"hi Function ctermfg=250
"hi Directory ctermfg=7
"hi MoreMsg ctermfg=2
"hi Question ctermfg=2
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
" hi ColorColumn ctermbg=22 guibg=#000000

"set fillchars=vert:\ 
 
" Cursor line
set cursorline
" set cursorcolumn 

"Auto close doc
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" #autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"
