local cmp = require("cmp")

cmp.setup({
    sources = cmp.config.sources({
        { name = "copilot", group_index = 2 },
        { name = "nvim_lsp", group_index = 2 },
        { name = "buffer", group_index = 2 },
        { name = "path", group_index = 2},
    }),
})
