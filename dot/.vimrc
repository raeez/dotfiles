execute pathogen#infect()

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
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

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

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm <CR>
endfunction

filetype plugin indent on
set ofu=syntaxcomplete#Complete

if has("autocmd")

"Fussy languages
autocmd FileType ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType * setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
endif

" make programs for various buffer types
au BufEnter *.tex set makeprg=xelatex\ %;open\ %<.pdf
au BufEnter *.rb set makeprg=irb\ -r\ %
au BufEnter *.py set makeprg=python\ %
au BufEnter *.c set makeprg=clang\ -Wall\ %\ &&\ ./a.out
au BufEnter *.cc set makeprg=clang++\ -Wall\ %\ &&\ ./a.out

" make uses real tabs
au FileType make                                     set noexpandtab

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

au BufRead,BufNewFile *.txt call s:setupWrapping()

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
runtime macros/matchit.vim

set colorcolumn=80
set background=dark
" let g:solarized_termcolors=16
""let g:solarized_termcolors=256
""let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
colorscheme solarized

" vim-lext-suite"
    " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
    " IMPORTANT: grep will sometimes skip displaying the file name if you
    " search in a single file. This will confuse Latex-Suite. Set your grep
    " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
    " OPTIONAL: This enables automatic indentation as you type.
filetype indent on
    " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
    " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
    " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


