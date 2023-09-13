""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set auto read when a file is changed from the outside
set autoread

" Set , as the map leader
let mapleader=","

" Fast saving
nmap <leader>w :w!<cr>

" Fast escape
inoremap jj <Esc>

" :W sudo saves the file
"  (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" fold
set foldmethod=indent
set nofoldenable
set foldlevel=2

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" smart tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>gT

" Close all buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let tl toggle between current and the last accessed tab
let g:lasttab = 1
nmap <leader>tl exe "tabn ".g:lasttab<cr>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful whene editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try 
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

" Return to last edit position when opening files.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> E <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <silent> <C-m> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" set filetypes as typescript react
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.format(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.format(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.format(nil, 100)
autocmd BufWritePre *.tsx lua vim.lsp.buf.format(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.format(nil, 100)
autocmd BufWritePre *.go lua vim.lsp.buf.format(nil, 100)


" set js/ts/typescriptreact tab size to 2
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescriptreact setlocal ts=2 sw=2 sts=0 expandtab

" Haskell formatting
let g:ormolu_suppress_stderr=1
