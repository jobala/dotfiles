inoremap jj <Esc>

" Colorscheme
set background=dark
set termguicolors
colorscheme gruvbox


" NerdTree
let g:NERDTreeWinPos = "right"
map <leader>s :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '*.egg-info', 'node_modules']


" Ale 
let g:ale_linters = {
            \   'typescript': ['tsserver', 'eslint'],
            \   'javascript': ['eslint'],
            \   'python': ['pyls', 'pylint'],
            \   'go': ['gopls', 'goimports', 'golint']
}

let g:ale_fixers = {
            \   'typescript': ['prettier'],
            \   'javascript': ['eslint'],
            \   'python': ['yapf'],
            \   'go': ['goimports']
}

let g:ale_fix_on_save = 1

nmap <silent> <leader>a <Plug>(ale_next_wrap)
nnoremap <silent> <leader>d :ALEGoToDefinition<cr>

let g:ale_linters_explicit = 1
let g:airline#extension#ale#enabled = 1
