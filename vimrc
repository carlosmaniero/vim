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
set hlsearch
set modifiable
set termguicolors

" set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
" set guigont=Droid\ Sans\ Mono\ for\ Powerline\ 11
set guifont=Meslo\ LG\ S\ for\ Powerline
set t_Co=256
set fillchars+=vert:\ 
let g:airline_powerline_fonts=1
let g:airline_left_alt_sep=""
let g:airline_left_sep=""
let g:airline_right_alt_sep=""
let g:airline_right_sep=""
let g:airline_skip_empty_sections = 1

autocmd VimEnter * NERDTreeMirrorOpen
syntax enable

" colorscheme hybrid
" colorscheme badwolf
" colorscheme evening
" colorscheme harlequin 
" colorscheme badwolf
" colorscheme ingretu
" colorscheme hilal
"colorscheme base16-atelier-cave
colorscheme base16-atelier-lakeside
"colorscheme base16-bright
"colorscheme base16-default-dark
"colorscheme base16-ir-black
"colorscheme base16-pop
"colorscheme base16-spacemacs
"colorscheme base16-summerfruit-dark 
"colorscheme moonshine
"autocmd VimEnter * AirlineTheme tomorrow
"colorscheme base16-atelier-lakeside

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
let g:NERDTreeWinSize=25

"On startup focus on buffer
function! s:FocusOnBuffer()
  if winnr("$") != 2
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    setlocal nocursorline
    wincmd l
  endif
endfunction

augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

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

map <C-o> :NERDTreeFocusToggle<cr>

"TagBar"
map <F8> :TagbarToggle<CR><CR>
" autocmd VimEnter * TagbarOpen
let g:tagbar_width=25
let g:tagbar_compact=1
let g:tagbar_iconchars=['▸', '▾']

function s:CustomizeColors()
    "hi TabLineSel ctermbg=7 ctermfg=0
    hi ColorColumn ctermbg=232

    " TagBar color
    hi TagbarFoldIcon term=bold ctermfg=68 guifg=#3777E6
    hi TagbarKind term=bold ctermfg=68 guifg=#3777E6
    hi VertSplit ctermbg=none guibg=#161b1d
    hi Visual ctermbg=255
    hi CursorLine ctermbg=235
    hi CursorLineNr ctermbg=236 ctermfg=161
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

    "AirlineTheme behelit
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

"Search"
" nnoremap <esc> :let @/ = ""<cr>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

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
" set cursorcolumn 

"Auto close doc
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" #autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"

let g:ycm_autoclose_preview_window_after_completion=1

let g:ycm_goto_buffer_command = 'new-tab'
map <leader>d :YcmCompleter GoToDefinition<cr>
map! <leader>d :YcmCompleter GoToDefinition<cr>

" autocmd BufNewFile,BufRead * normal zR

let g:ycm_python_binary_path = 'python'

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

 let g:tagbar_ctags_bin = '/usr/bin/ctags'
