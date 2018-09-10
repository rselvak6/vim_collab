execute pathogen#infect()
filetype indent plugin on

syntax on
colorscheme brogrammer
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
nnoremap <C-BS> :dw
nnoremap <C-S-Right> :bnext<CR>
nnoremap <C-S-Left> :bprevious<CR>
nnoremap [v :vsplit<Space>
nnoremap [s :set splitright<CR>
nnoremap [ns :set nosplitright<CR>

"Tab mappings
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
nnoremap S :SyntasticToggleMode<CR>
nnoremap SC :SyntasticCheck<CR>
map N :NERDTreeToggle<CR>
map NS :NERDTreeMirror<CR>
map NQ :NERDTreeClose<CR>
map NB :Bookmark<Space>
map NBO :OpenBookmark<CR>
map NBQ :ClearAllBookmarks<CR>

"Bufferline"
let g:bufferline_echo=0
set statusline=%{bufferline#generate_string()}

"Airline"
set t_Co=256
set laststatus=2
set encoding=utf-8
set ttimeoutlen=50

let g:airline_theme = 'night_owl'
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

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_loc_list_height = 3

"Nerdtree
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
