lspconfig = require'lspconfig'
completion_callback = require'completion'.on_attach

--  Configure language servers and setup autocompletion
lspconfig.pyls.setup{on_attach=completion_callback}
lspconfig.tsserver.setup{on_attach=completion_callback}
lspconfig.solargraph.setup{on_attach=completion_callback}



-- References
-- https://coffeeandcontemplation.dev/
-- https://coffeeandcontemplation.dev/2021/01/10/language-server-in-vim/
