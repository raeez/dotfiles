" =============================================================================
" MACVIM GUI SETTINGS
" =============================================================================
" These settings only apply to MacVim GUI (mvim)

" Font
set guifont=JetBrainsMono\ Nerd\ Font:h14
" Alternatives:
" set guifont=MesloLGS\ NF:h14
" set guifont=Monaspace\ Neon:h14
" set guifont=Fira\ Code:h14

" Light theme for GUI (dark in terminal)
set background=light
colorscheme catppuccin_latte

" Window size
set lines=50
set columns=120

" Clean up GUI chrome
set guioptions-=T          " Remove toolbar
set guioptions-=r          " Remove right scrollbar
set guioptions-=L          " Remove left scrollbar
set guioptions-=m          " Remove menu bar
set guioptions+=c          " Use console dialogs instead of popups

" Smooth scrolling
set guioptions+=k

" Enable ligatures (for fonts that support them)
set macligatures

" Native macOS fullscreen
set fuoptions=maxvert,maxhorz

" Transparency (0 = opaque, 100 = fully transparent)
" set transparency=5

" Cursor
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver25-iCursor
set guicursor+=n-v-c:blinkon0

" Native macOS keyboard shortcuts
macmenu &File.New\ Tab key=<D-t>
macmenu &File.Save key=<D-s>
macmenu &File.Close key=<D-w>

" Cmd+/ for commenting (uses vim-commentary)
nmap <D-/> gcc
vmap <D-/> gc

" Cmd+P for FZF files
nmap <D-p> :Files<CR>

" Cmd+Shift+P for commands
nmap <D-P> :Commands<CR>

" Cmd+number for tab switching
nmap <D-1> 1gt
nmap <D-2> 2gt
nmap <D-3> 3gt
nmap <D-4> 4gt
nmap <D-5> 5gt
nmap <D-6> 6gt
nmap <D-7> 7gt
nmap <D-8> 8gt
nmap <D-9> 9gt
nmap <D-0> :tablast<CR>
