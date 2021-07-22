let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'


lua << EOF
require'lspconfig'.pyls.setup{
    on_attach=on_attach,
    settings = {
        pyls = {
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

source ~/.vimrc
