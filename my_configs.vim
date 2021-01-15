inoremap jj <Esc>

" Colorscheme
set background=dark
set termguicolors
colorscheme gruvbox


" NerdTree
let g:NERDTreeWinPos = "right"
map <leader>s :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '*.egg-info', 'node_modules']
