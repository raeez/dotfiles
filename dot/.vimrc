" TODO
" parse
"   * http://stackoverflow.com/questions/21112972/macvim-gets-all-settings-from-vimrc-but-not-the-colors-and-i-have-to-source
"   * http://stackoverflow.com/questions/13436823/disable-use-of-macvim-keyboard-shortcuts
" - use au to detect filetype to turn on/off duplication of "", {} etc.

" enable pathogen
execute pathogen#infect()
Helptags
filetype plugin indent on


set shellslash
set grepprg=grep\ -nH\ $*



" Basic History
set nocompatible

set hidden

set history=2000

set number
set ruler
syntax on
syntax enable

" Set encoding
set encoding=utf-8

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
set wrap

set autoindent
set smartindent

set list
set listchars=tab:▸\ ,eol:¬

" Terminal Title
set title

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

setlocal spelllang=en_gb
set nospell
imap hh <Esc>

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc
set wildmenu

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" CTags
" map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Remember last location in file
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"     \| exe "normal g'\"" | endif
" endif

function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=79
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm <CR>
endfunction

set ofu=syntaxcomplete#Complete

if has("autocmd")

  "Fussy languages
  autocmd FileType ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType python setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType * setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

  "autocmd Filetype tex setl updatetime=5
  "let g:livepreview_previewer = 'open -a Skim'
  "let g:livepreview_previewer = 'evince'
  "let g:LatexBox_split_type="new"

  " defaults write TeXShop BringPdfFrontOnAutomaticUpdate NO


" TODO decide on FileType for latex

  autocmd BufWritePre * %s/\s\+$//e

  autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
endif

" make programs for various buffer types
" au BufEnter *.tex set makeprg=pdflatex\ %;open\ %<.pdf
au FileType make set noexpandtab
au BufEnter *.rb set makeprg=irb\ -r\ %
au BufEnter *.py set makeprg=python\ %
au BufEnter *.c set makeprg=clang\ -Wall\ %\ &&\ ./a.out
au BufEnter *.cc set makeprg=clang++\ -Wall\ %\ &&\ ./a.out
" make uses real tabs
" Thorfile, Rakefile and Gemfile are Ruby
" au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru}    set ft=ruby
" md, markdown, and mk are markdown and define buffer-local preview
autocmd BufNewFile,BufReadPost *.{plan,md} set filetype=markdown
au BufRead,BufNewFile *.{plan,md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
"au BufRead,BufNewFile *.{txt,tex} call s:setupWrapping()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Use modeline overrides
set modeline
set modelines=10

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"extended % matching
" runtime macros/matchit.vim

set colorcolumn=80
" set background=light

"let g:solarized_termcolors=16
"let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_termtrans = 1
"let g:solarized_visibility = "low"
let g:solarized_contrast = "high"
let g:signify_sign_weight = 'none'

colorscheme solarized

" vim-lext-suite"
    " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on # already on
    " IMPORTANT: grep will sometimes skip displaying the file name if you
    " search in a single file. This will confuse Latex-Suite. Set your grep
    " program to always generate a file-name.

" filetype indent on # already on
set grepprg=grep\ -nH\ $*
    " OPTIONAL: This enables automatic indentation as you type.

" filetype indent on # already on
    " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
    " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
    " The following changes the default filetype back to 'tex':

" see vim-latex-suite manual: handles vim's mode upon .tex
let g:tex_flavor='latex'

" auto paste mode, accounting for tmux
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" automatic insertion of timestamp
iab __- <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" latex-flow aware gq
map \gq ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>gq//-1<CR>
omap lp ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>//-1<CR>.<CR>

" vim sessions defaults to capturing all global options, including
" 'runtimepath' needed by vim-pathogen
" set sessionoptions-=options
"
"let g:livepreview_previewer = 'evince'
" On OS X: Evince 3 or later from MacPorts works
" let g:livepreview_previewer = 'okular'
"g:livepreview_previewer = 'zathura'
"g:livepreview_previewer = 'open -a Skim'
"g:livepreview_previewer = 'open -a Preview', the preview only updates when you move the focus on the Preview application.
" MuPDF: let g:livepreview_previewer = 'mupdf'

let g:airline_theme='solarized'
"let g:Tex_CompileRule_pdf = 'xelatex -output-directory=out --interaction=nonstopmode -file-line-error-style $*'
"let g:Tex_IgnoredWarnings=
"    \'hyperref'."\n".
"    \'Underfull'."\n".
"    \'Overfull'."\n".
"    \'specifier changed to'."\n".
"    \'You have requested'."\n".
"    \'Missing number, treated as zero.'."\n".
"    \'There were undefined references'."\n".
"    \'Citation %.%# undefined'."\n".
"    \'Double space found.'."\n"
"let g:Tex_IgnoreLevel = 8
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has('gui_running')
    let s:uname = system("uname")
    "if s:uname == "Darwin\n"
    set background=dark " use macvim for light theme"
    set guifont=Inconsolata\ for\ Powerline\ Nerd\ Font\ Complete:h21
    set guioptions-=m " menubar
    set guioptions-=T " taskbar
    set guioptions-=r " right scrollbar
    set guioptions-=l " left scrollbar
    set guioptions+=g " make inactive menu items grey
    set guioptions-=t " ?
    set guioptions-=e " ???
    set guioptions-=L " ???
    set guioptions=c
    " :nmap <silent> <Leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr> :set scb<cr>
    "
    " defaults write org.vim.MacVim MMNativeFullScreen 0
    " set invfullscreen toggles
    " https://www.intego.com/mac-security-blog/interface-tweaks-for-el-capitan/
    set vb t_vb=
else
    set background=dark
endif
set noeb vb t_vb=

"see http://vim.wikia.com/wiki/Hide_toolbar_or_menus_to_see_more_text
"function! ToggleGUICruft()
  "if &guioptions=='i'
    "exec('set guioptions=imTrL')
  "else
    "exec('set guioptions=i')
  "endif
"endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i

let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"
let g:airline_powerline_fonts = 1
 if !exists('g:airline_symbols')
       let g:airline_symbols = {}
 endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
"let g:airline_theme = 'molokai'
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256_dark'
set transparency=10
set wm=4
