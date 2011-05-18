" Vim filetype plugin
" Language:		Markdown
" Maintainer:		Tim Pope <vimNOSPAM@tpope.org>

if exists("b:did_ftplugin")
  finish
endif

runtime! ftplugin/html.vim ftplugin/html_*.vim ftplugin/html/*.vim
unlet! b:did_ftplugin

setlocal comments=fb:*,fb:-,fb:+,n:> commentstring=>\ %s
setlocal formatoptions+=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

setlocal wrap
setlocal linebreak
setlocal nolist " list disables linebreak
setlocal textwidth=0
setlocal wrapmargin=0
setlocal fo-=t

let b:undo_ftplugin .= "|setl cms< com< fo<"

" vim:set sw=2:
