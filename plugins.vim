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

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Theme
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'jobala/madonna'
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'jaredgorski/fogbell.vim'


" Indent lines
Plug 'lukas-reineke/indent-blankline.nvim'

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

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}

" fzf
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }

" Writing
Plug 'junegunn/goyo.vim'

"Haskell Formatting
Plug 'sdiehl/vim-ormolu'

" Prettier
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'

Plug 'dart-lang/dart-vim-plugin'

Plug 'akinsho/toggleterm.nvim'
call plug#end()
