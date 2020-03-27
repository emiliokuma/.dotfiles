" Plugin manager {{{
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
	Plug 'lilydjwg/colorizer'					" Mostrar colores
	Plug 'dracula/vim', { 'as': 'dracula' }				" Dracula theme
	Plug 'itchyny/lightline.vim'					" Lightline	
	Plug 'luochen1990/rainbow'					" Colorea los parentesis	
	Plug 'PotatoesMaster/i3-vim-syntax'				" Syntax i3
call plug#end()

" some pluing specific things
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

" == General configuration ==

set hlsearch		"highlight search results
set number		"add line numbers
set relativenumber
set ignorecase		"ignore the case when search texts
set smartcase		"if searching text contains uppercase case will not be ignored
"set showmode		"displays mode at bottom of screen
set noshowmode		" No mostrar el modo actual (ya lo muestra la barra de estado)
set laststatus=2	"statusline
set cursorline		"hilight the line of the cursor
"set cursorcolumn	"hilight the column of the cursor
syntax enable		"syntax highlighting
set noswapfile		"don't use a swapfile for the buffer

" == Colors ==
"
" built-in schemes installed in `/usr/share/nvim/runtime/colors`; extra schemes installed in `~/.config/nvim/colors`
colorscheme dracula	" `default` picks up colors defined in `~/.Xresources`
set background=dark
set termguicolors
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE
highlight clear CursorLineNR
