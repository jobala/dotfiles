let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'


lua << EOF
require'nvim-autopairs'.setup{}

require'lspconfig'.tsserver.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.pylsp.setup{
    on_attach=on_attach,
    settings = {
        pylsp = {
            plugins = {
                pylint = {
                    enabled = true
                },
                pycodestyle = {
                    enabled = false
                }
            }
        }
    }
}
EOF

source ~/.config/nvim/basic.vim
source ~/.config/nvim/config.vim

