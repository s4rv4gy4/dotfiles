--[[
  
  references:
    auth: https://github.com/folke
    repo: https://github.com/folke/lazy.nvim
    docs: https://raw.githubusercontent.com/folke/lazy.nvim/main/doc/lazy.nvim.txt
    hash: https://github.com/folke/lazy.nvim/releases/tag/stable

]]

local lp = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lp) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lp,
  })

  vim.fn.system({ "git", "-C", lp, "checkout", "tags/stable" })
end

vim.opt.rtp:prepend(lp)

local is_ok, lazy = pcall(require, "lazy")
if not is_ok then
  vim.notify("[Error] lazy.nvim plugin, not found!", vim.log.levels.ERROR)
  return
end

lazy.setup({
  spec = "plugins",
  diff = { cmd = "terminal_git" },
  defaults = { lazy = true, version = "*" },
  lockfile = vim.fn.stdpath("config") .. "/lua/plugins/plugins-lock.json",
  checker = {
    enabled = true,
    concurrency = 5,
    notify = true,
    frequency = 86400,
  },

  performance = {
    cache = { enabled = true },
    rtp = {
      disabled_plugins = {
        "gzip",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
        "netrwPlugin",
      },
    },
  },
  debug = false,
})
