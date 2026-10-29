-- File tree on the left. Toggle with <Space>e. Icons look best with a Nerd Font.
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  keys = { { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "File tree" } },
  opts = {},
}
