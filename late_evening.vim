" Vim color file
" Maintainer:   Dan Church
" Last Change:  2015 Jun 29

" Forked from evening.vim with the following tweaks:

" ** Aesthetic fixes **
" - Almost black backgrounds
" - Cursorline not so bright as to make comments disappear
" - Brighter cursor
" - Brighter green messages
" - Nicer colors on line numbers (like comments with the current line
"   highlighted if &cursorline)
" - Replace awful-looking yellow-on-white when using wildmenu
" - Turn delimiters white instead of orange

" ** Bug fixes **
" - Text mode: fix invisible visual mode selection
" - Fix inability to see netrw marked files when using gui fonts that don't
"   like bold (type mf in netrw, controlled by TabLineSel highlight)
" - Fix many inconsistencies between gui and console (evening.vim):
"   * PreProc: blue in console, magenta in gui
"   * Comment: cyan in console, blue in gui
"   * CursorLine: underline in console (256 colors), gray in gui
"   * Special: salmon in console (256 colors), red in console (8 colors),
"     orange in gui

" This color scheme uses a *really* dark grey background.
set background=dark

" First remove all existing highlighting.
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "late_evening"

hi Normal		ctermbg=black ctermfg=White guifg=White guibg=grey5

" Cursor only applies to GUI mode
hi Cursor		guibg=lightgreen guifg=Black
hi lCursor		guibg=Cyan guifg=Black

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg		ctermbg=darkred	ctermfg=white					guibg=red guifg=white
hi IncSearch	cterm=reverse									gui=reverse
hi ModeMsg		cterm=bold										gui=bold
hi StatusLine	cterm=none ctermbg=238							gui=bold guibg=grey20
hi StatusLineNC cterm=reverse									gui=reverse
hi VertSplit	cterm=reverse									gui=reverse
hi Visual		cterm=reverse ctermbg=black						guibg=grey40
hi VisualNOS	cterm=underline,bold							gui=underline,bold
hi DiffText		cterm=bold ctermbg=red							gui=bold guibg=Red
hi Directory	ctermfg=lightcyan								guifg=cyan
hi LineNr		ctermfg=blue									guifg=steelblue
hi MoreMsg		ctermfg=82										gui=bold guifg=#60ff60
hi NonText		ctermfg=lightblue								gui=bold guifg=lightblue guibg=grey10
hi Question		ctermfg=82										gui=bold guifg=#60ff60
hi Search		ctermbg=yellow ctermfg=black					guibg=yellow guifg=black
hi SpecialKey	ctermfg=lightblue								guifg=cyan
hi Title		ctermfg=165										gui=bold guifg=magenta
hi WarningMsg	ctermfg=196										guifg=Red
hi WildMenu		ctermbg=yellow ctermfg=black					guibg=yellow guifg=black
hi Folded		ctermbg=lightgrey ctermfg=darkblue				guibg=lightgrey guifg=darkblue
hi FoldColumn	ctermbg=lightgrey ctermfg=darkblue				guibg=grey guifg=darkblue
hi DiffAdd		ctermbg=darkblue								guibg=darkblue
hi DiffChange	ctermbg=darkmagenta								guibg=darkmagenta
hi DiffDelete	ctermfg=blue ctermbg=darkcyan					gui=bold guifg=blue guibg=darkcyan
hi CursorColumn ctermbg=238										guibg=grey30
hi CursorLine	cterm=none ctermbg=238							guibg=grey30
hi Comment		cterm=bold ctermfg=blue							guifg=#80a0ff
hi TabLineSel	cterm=reverse									gui=reverse
hi Type			ctermfg=82										guifg=#60ff60

hi Ignore		ctermfg=darkgrey								guifg=grey20
" Groups for syntax highlighting
hi Constant		ctermfg=217										guifg=#ffa0a0 guibg=grey5
hi Special		ctermfg=lightred								guifg=orange guibg=grey5
hi Delimiter	ctermfg=white									guifg=white
" bug fix
hi PreProc ctermfg=magenta

" Modifications for more colors
if &t_Co > 8
  hi Statement	cterm=bold ctermfg=yellow						gui=bold guifg=#ffff60
endif

" Low color support
if &t_Co < 17
  hi CursorLine		cterm=underline ctermbg=none
  hi CursorColumn	cterm=reverse ctermbg=black
  hi StatusLine		cterm=bold ctermbg=black
  hi Type			ctermfg=green
  hi MoreMsg		ctermfg=lightgreen
  hi Question       ctermfg=lightgreen
  hi Title			ctermfg=lightmagenta
  hi WarningMsg		ctermfg=lightred
  hi Constant		ctermfg=magenta
endif

" Monochrome terminal support
hi Constant		term=underline
hi CursorColumn	term=reverse
hi CursorLine	term=underline
hi Delimiter	term=bold
hi DiffAdd		term=bold
hi DiffChange	term=bold
hi DiffDelete	term=bold
hi DiffText		term=reverse
hi Directory	term=bold
hi ErrorMsg		term=standout
hi FoldColumn	term=standout
hi Folded		term=standout
hi IncSearch	term=reverse
hi LineNr		term=underline
hi ModeMsg		term=bold
hi MoreMsg		term=bold
hi NonText		term=bold
hi Question		term=standout
hi Search		term=reverse
hi Special		term=bold
hi SpecialKey	term=bold
hi Statement	term=bold
hi StatusLine	term=bold
hi StatusLineNC	term=reverse
hi TabLineSel	term=bold
hi Title		term=bold
hi VertSplit	term=reverse
hi Visual		term=reverse
hi VisualNOS	term=underline,bold
hi WarningMsg	term=standout
hi WildMenu		term=standout

" vim: sw=2 ts=4