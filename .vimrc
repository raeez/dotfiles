set nocompatible

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set noexpandtab

set number

syntax on

filetype plugin indent on
set ofu=syntaxcomplete#Complete

if has("autocmd")
	"Enable filetype detection
	filetype plugin indent on

	"Fussy languages
	autocmd FileType ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd FileType yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd FileType html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
endif

if &t_Co > 2 || has("gui_running")
	syntax on
endif

set showmatch

set incsearch
set hlsearch

set list
set listchars=tab:▸\ ,eol:¬
"help listchars
"
"setlocal spell spelllang=en_gb
imap hh <Esc>

au BufEnter *.tex set makeprg=xelatex\ %;open\ %<.pdf

au BufEnter *.rb set makeprg=irb\ -r\ %

"OmniCompletion
no <Nul> <C-x><C-o>

"Search
no l n
no L N

"Navigation
no s l
no t j
no n k

"End/Beginning
no - $
no _ ^

"Fast Navigation
no T 8<Down>
no N 8<Up>
no H 3b
no S 3e

"folding settings
"set foldmethod=indent
"set foldnestmax=10
"set nofoldenable
"set foldlevel=1

"Firefox/Chrome tab shortcuts
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

set ignorecase
set ruler
set wildmenu
set commentstring=\ #\ %s
set foldlevel=0
set clipboard+=unnamed

"set modeline

set background=dark

" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap LL :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))

def EvaluateCurrentRange(): 
    eval(compile('\n'.join(vim.current.range),'','exec'),globals()) 
EOF
