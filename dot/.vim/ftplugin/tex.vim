set cmdheight=2 "otherwise have to press enter on every \ll c.f. :help :silent

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!

set iskeyword+=: " TODO what does this do?
" trial line-wrapping

" Compilation options
let g:Tex_TreatMacViewerAsUNIX = 1
let g:Tex_ExecuteUNIXViewerInForeground = 1
let g:Tex_ViewRule_ps = 'open -a Skim'
let g:Tex_ViewRule_pdf = 'open -a /Applications/Skim.app'
let g:Tex_ViewRule_dvi = 'open -a /Applications/texniscope.app'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -output-directory=out -interaction=nonstopmode $* && open -a $*.pdf'
" let g:Tex_CompileRule_pdf = 'latexmk -outdir=out -pdf -f $* && open -a Skim out/*.pdf'
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_UseMakefile=0 " ignore any Makefile, if present

" sums and limits to have placeholders
let g:Tex_Com_sum = "\\sum\\limits\_{<++>}\^{<++>}<++>"
let g:Tex_Com_cap = "\\bigcap\\limits\_{<++>}\^{<++>}<++>"
let g:Tex_Com_cup = "\\bigcup\\limits\_{<++>}\^{<++>}<++>"
let g:Tex_Com_lim = "\\lim\\limits\_{<++>}\^{<++>}<++>"

nmap ds$ f$x,.
" hack to simulate $ as surrounding environment while editing .tex
" TODO implement more elegant solution c.f.
"   * https://github.com/tpope/vim-surround/blob/master/doc/surround.txt#L145
"   * https://github.com/tpope/vim-surround/issues/18
"   * https://github.com/tpope/vim-surround/pull/107
"   * https://github.com/tpope/vim-surround/issues/49
