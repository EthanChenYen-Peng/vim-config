lspconfig = require'lspconfig'

--  Configure language servers and setup autocompletion
lspconfig.pyls.setup{}
lspconfig.tsserver.setup{}
lspconfig.solargraph.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.cssls.setup{
    capabilities = capabilities,
    filetypes = { "css", "scss", "less" }
}



-- References
-- https://coffeeandcontemplation.dev/
-- https://coffeeandcontemplation.dev/2021/01/10/language-server-in-vim/
