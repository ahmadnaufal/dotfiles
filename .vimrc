" enable solarized dark theme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
" enable filetype event, plugin loading, and indentation
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" enable line numbering
set number
" enable highlighting
syntax enable
" show the filename in the window titlebar
set title
" show the current mode
set showmode
" highlight search results
set hlsearch
" disable newline at the end of file
set binary
set noeol
" strip trailing whitespace
function! StripWhitespace()
	let save_cursor = getpos('.')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
endfun
autocmd BufWritePre * :call StripWhitespace()
