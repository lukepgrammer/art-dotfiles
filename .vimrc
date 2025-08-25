" Color highlighting plugin "

call plug#begin('~/.vim/plugged')
Plug 'chrisbra/Colorizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'romainl/Apprentice'
call plug#end()

" auto highlight when openning any file "
autocmd VimEnter * ColorHighlight


" Powerline triangle shaped thing "
let g:airline_powerline_fonts = 1

set background=dark
syntax on
colorscheme gruvbox 

" Colors
" gruvbox set background dark/null

