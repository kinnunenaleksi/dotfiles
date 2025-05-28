local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

local servers = {
  "pyright",
  "ruff",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
  })
end

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"c", "cpp", "objc", "objcpp"},
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".clangd", ".git"),
})
