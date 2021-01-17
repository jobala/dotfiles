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
            \   'typescript': ['tsserver', 'tslint', 'eslint'],
            \   'typescriptreact': ['tslint', 'eslint'],
            \   'javascript': ['eslint'],
            \   'python': ['pyls', 'pylint'],
            \   'go': ['gopls', 'goimports', 'golint', 'gofmt']
            \}

let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'typescript': ['tslint', 'eslint'],
            \   'typescriptreact': ['tslint', 'eslint'],
            \   'python': ['yapf'],
            \   'go': ['goimports', 'gofmt']
            \}

let g:ale_fix_on_save = 1

nmap <silent> <leader>a <Plug>(ale_next_wrap)
nnoremap <silent> <leader>d :ALEGoToDefinition<cr>

let g:ale_set_highlights = 1


let g:ale_lint_on_enter = 1

let g:ale_linters_explicit = 1


let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('source', {
            \ '_': ['ale']
            \})


" Git gutter

let g:gitgutter_enabled=0

" Turn old regex engine off
set re=0
