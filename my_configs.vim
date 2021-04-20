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
let g:ale_dart_dartfmt_executable = '/opt/homebrew/Caskroom/flutter/1.22.6/flutter/bin/cache/dart-sdk/bin/dartfmt'
let g:ale_dart_dartanalyzer_executable = '/opt/homebrew/Caskroom/flutter/1.22.6/flutter/bin/cache/dart-sdk/bin/dartanalyzer'
let g:ale_dart_analysis_server_executable = '/opt/homebrew/bin/dart'

let g:ale_linters = {
            \   'typescript': ['tsserver', 'eslint'],
            \   'typescriptreact': ['eslint'],
            \   'javascript': ['eslint'],
            \   'python': ['pyls', 'pylint'],
            \   'go': ['gopls', 'goimports', 'golint', 'gofmt'],
            \   'dart': ['language_server']
            \}

let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'typescript': ['eslint'],
            \   'javascript': ['eslint'],
            \   'typescriptreact': ['eslint'],
            \   'python': ['yapf'],
            \   'go': ['goimports', 'gofmt'],
            \   'dart': ['dartfmt']
            \}

let g:ale_fix_on_save = 1

nmap <silent> <leader>a <Plug>(ale_next_wrap)
nnoremap <silent> <leader>d :ALEGoToDefinition<cr>

let g:ale_set_highlights = 1
let g:ale_lint_on_text_changed = 1
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

" Show line numbers
set number
