execute pathogen#infect()
filetype indent plugin on

syntax on

colorscheme erez
set background=dark

set nocompatible
set hidden
set showcmd
set autoread

set backspace=indent,eol,start
set autoindent
set number
set smarttab

set confirm
set visualbell

set splitright "For right vertical split

set tags=./tags,tags;$HOME "CTags

"Buffer mappings"
nnoremap <C-Up> <C-W><C-J>
nnoremap <C-Down> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-O> <C-W><S-T>
nnoremap <F4> :bd<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <C-S-Right> :bnext<CR>
nnoremap <C-S-Left> :bprevious<CR>

"Tab mappings"
nnoremap w :w<CR>
nnoremap q :q<CR>
nnoremap WQ :wqa<CR>
nnoremap QQ :qa!<CR>
nnoremap T :tabnew<Space>
nnoremap ~ :tab sall<cr>
map b gT
map n gt

"Misc"
map r <C-R>
nnoremap CL :noh<CR>

"Bufferline"
let g:bufferline_echo=0
set statusline=%{bufferline#generate_string()}

"Airline"
" set t_Co=256
set laststatus=2
set encoding=utf-8
set ttimeoutlen=50

let g:airline_theme = 'zenburn'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
      endif

let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
"let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#whitespace#enabled = 1
