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
" set scrolloff to 3 lines before
set scrolloff=3
" enable highlighting
syntax enable
" highlight current line
set cursorline
" show the filename in the window titlebar
set title
" always show status line
set laststatus=2
" show the current mode
set showmode
" highlight search results
set hlsearch
" disable newline at the end of file
set binary
set noeol
" move backup, swap & undo history in a centralized directory
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
" list dir in netrw with metadata
" let g:netrw_liststyle=1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
" strip trailing whitespace
function! StripWhitespace()
	let save_cursor = getpos('.')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
endfun
autocmd BufWritePre * :call StripWhitespace()
