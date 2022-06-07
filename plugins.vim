call plug#begin('~/.config/nvim/plugged')
" LSP config
Plug 'neovim/nvim-lspconfig'

" source for buffer words
Plug 'hrsh7th/cmp-buffer'

" source for neovim's built in language server
Plug 'hrsh7th/cmp-nvim-lsp'

" source for filesystem paths
Plug 'hrsh7th/cmp-path'

" Autocompletion engine 
Plug 'hrsh7th/nvim-cmp'

" Theme
Plug 'ayu-theme/ayu-vim'

" NERDTree with on-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}

" Show meta information at the bottom when editing
Plug 'itchyny/lightline.vim'

" Add closing bracket/parenthesis
Plug 'windwp/nvim-autopairs'

" Syntax highlighting and indentation for JSX in Typescript
Plug 'peitalin/vim-jsx-typescript'

" Git integration
Plug 'tpope/vim-fugitive'

" Syntax highlighting for Javascript
Plug 'pangloss/vim-javascript'

" Syntax file for Typescript
Plug 'leafgarland/typescript-vim'

" Show function/method signature when typing
Plug 'ray-x/lsp_signature.nvim'

call plug#end()
