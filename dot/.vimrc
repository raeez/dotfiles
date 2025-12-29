" =============================================================================
" PLUGINS
" =============================================================================
call plug#begin('~/.vim/plugged')

" Theme
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Quality of life
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'

" Fuzzy finder (optional but recommended)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" LaTeX
Plug 'lervag/vimtex'

call plug#end()

" =============================================================================
" GENERAL
" =============================================================================
set nocompatible
set hidden
set history=2000
set encoding=utf-8
set backspace=indent,eol,start
set mouse=a
set clipboard=unnamed
set updatetime=300

" Disable swap/backup (use git instead)
set nobackup
set nowritebackup
set noswapfile

" =============================================================================
" APPEARANCE
" =============================================================================
set number
set ruler
set cursorline
set colorcolumn=80
set signcolumn=yes
set title
set termguicolors
set background=dark

colorscheme catppuccin_mocha

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

" =============================================================================
" INDENTATION
" =============================================================================
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

" Show whitespace
set list
set listchars=tab:▸\ ,trail:·,eol:¬

" =============================================================================
" SEARCH
" =============================================================================
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" =============================================================================
" COMPLETION
" =============================================================================
set wildmenu
set wildmode=list:longest,full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*.class,node_modules

" =============================================================================
" KEY MAPPINGS
" =============================================================================
" Quick escape
inoremap jk <Esc>
inoremap hh <Esc>

" Clear search highlight
nnoremap <silent> <Esc> :nohlsearch<CR>

" Open file in same directory
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" FZF
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>rg :Rg<CR>

" =============================================================================
" FILETYPES
" =============================================================================
augroup filetypes
  autocmd!

  " Strip trailing whitespace on save
  autocmd BufWritePre * %s/\s\+$//e

  " Remember cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Makefiles need tabs
  autocmd FileType make setlocal noexpandtab

  " Markdown
  autocmd BufNewFile,BufReadPost *.{md,plan} set filetype=markdown
  autocmd FileType markdown setlocal wrap textwidth=80 spell

  " Python (4 space indent is standard)
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

augroup END

" =============================================================================
" LATEX (vimtex)
" =============================================================================
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_latexmk = {
  \ 'options' : [
  \   '-xelatex',
  \   '-file-line-error',
  \   '-synctex=1',
  \   '-interaction=nonstopmode',
  \ ],
  \}

" =============================================================================
" TIMESTAMP
" =============================================================================
iab __- <C-r>=strftime("%d/%m/%y %H:%M:%S")<CR>