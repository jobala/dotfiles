let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'


lua << EOF
require'nvim-autopairs'.setup{}

require'lspconfig'.tsserver.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.pylsp.setup{}
EOF

source ~/.config/nvim/basic.vim
source ~/.config/nvim/config.vim

