-- nvim-tree wants netrw (the built-in file browser) disabled early
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.opt.number = true
-- Basic Settings
vim.opt.relativenumber = true      -- Show relative line numbers
vim.opt.mouse = 'a'                -- Enable mouse support
vim.opt.ignorecase = true          -- Case insensitive search
vim.opt.smartcase = true           -- Unless capital letter used
vim.opt.wrap = false               -- Don't wrap lines
vim.opt.breakindent = true         -- Preserve indentation in wrapped lines
vim.opt.tabstop = 4                -- Tab width
vim.opt.shiftwidth = 4             -- Indent width
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.termguicolors = true       -- Enable 24-bit colors
vim.opt.scrolloff = 8              -- Keep 8 lines above/below cursor
vim.opt.sidescrolloff = 8          -- Keep 8 columns left/right of cursor
vim.opt.signcolumn = "yes"         -- Always show sign column
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard
vim.opt.splitright = true          -- Split windows to the right
vim.opt.splitbelow = true          -- Split windows below


-- Bootstrap lazy.nvim: clone it once if it's missing
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = { { import = "plugins" } },   -- load lua/plugins/*.lua
  checker = { enabled = false },        -- no background update checks; you decide when
  change_detection = { notify = false },
})
