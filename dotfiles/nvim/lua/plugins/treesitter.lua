-- Syntax highlighting. The main branch compiles parsers locally:
-- requires a C compiler and the `tree-sitter` CLI.
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",       -- the rewritten branch; the old "master" is frozen
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({ "lua", "python", "bash", "json", "markdown" })
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args) pcall(vim.treesitter.start, args.buf) end,
    })
  end,
}
