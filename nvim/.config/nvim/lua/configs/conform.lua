local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = {"ruff_format", "black"},
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
