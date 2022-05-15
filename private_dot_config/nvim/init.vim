call plug#begin()
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdTree'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

nmap <C-n> :NERDTreeToggle<CR>

" Default NeoVim theme
colorscheme nord

"Indentation
set tabstop=4

"Display line number
set number

"lightline: Status bar
let g:lightline = {
      \ 'colorscheme': 'nord',
	  \ 'separator': { 'left': '', 'right': '' },
	  \ 'subseparator': { 'left': '', 'right': '' },
      \ }
