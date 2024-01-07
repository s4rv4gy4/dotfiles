--[[

  references:
    auth: https://github.com/catppuccin
    repo: https://github.com/catppuccin/nvim
    docs: https://raw.githubusercontent.com/catppuccin/nvim/main/doc/catppuccin.txt
    hash: https://github.com/catppuccin/nvim/commit/5e36ca599f4aa41bdd87fbf2c5aae4397ac55074

]]

local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 100,
  commit = "5e36ca599f4aa41bdd87fbf2c5aae4397ac55074",
  enabled = true,
}

function M.config()
  local is_ok, catppuccin = pcall(require, "catppuccin")
  if not is_ok then
    vim.notify(
      "[Error] catppuccin colorscheme, not found!",
      vim.log.levels.ERROR
    )
    return
  end

  catppuccin.setup({
    flavour = "frappe",
  })

  vim.cmd.colorscheme("catppuccin")
end

return M
