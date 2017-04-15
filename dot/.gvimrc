" -----------------------------------------------------------------------------  
" |                            VIM Settings                                   |
" |                              GUI stuff                                    |
" -----------------------------------------------------------------------------  


" OS Specific *****************************************************************
if has("gui_macvim")

  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
  "set guifont=proggytiny:h11
  set guifont=M+\ 1m\ light:h11
  set guioptions-=T  " remove toolbar

elseif has("gui_gtk2")

  set guifont=Monaco
  set guioptions-=T  " remove toolbar

elseif has("x11")
elseif has("gui_win32")
end

" General *********************************************************************
" set anti " Antialias font

set transparency=3

" Default size of window
set columns=179 
set lines=50

" Tab headings 
set gtl=%t gtt=%F

"colorscheme ir_black
colorscheme kod
