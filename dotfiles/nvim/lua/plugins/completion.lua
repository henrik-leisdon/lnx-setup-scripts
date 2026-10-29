-- Autocomplete via LSP. Language servers must be installed on your system,
-- e.g. lua-language-server and pyright.
return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
      keymap = { preset = "default" },          -- <C-space> open, <C-y> accept
      fuzzy = { implementation = "lua" },       -- skip downloading the prebuilt Rust binary
    },
  },
  {
    "neovim/nvim-lspconfig",                    -- ships ready-made configs for servers
    config = function()
      vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })
      vim.lsp.enable({ "lua_ls", "pyright" })
    end,
  },
}
