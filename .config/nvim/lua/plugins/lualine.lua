--[[

  references:
    auth: https://github.com/nvim-lualine
    repo: https://github.com/nvim-lualine/lualine.nvim
    docs: https://raw.githubusercontent.com/nvim-lualine/lualine.nvim/master/doc/lualine.txt
    hash: https://github.com/nvim-lualine/lualine.nvim/commit/566b7036f717f3d676362742630518a47f132fff 

]]--

local M = {
  "nvim-lualine/lualine.nvim",
  name = "lualine",
  event = "VeryLazy",
  commit = "566b7036f717f3d676362742630518a47f132fff",
  dependencies = { 'nvim-tree/nvim-web-devicons', commit = "db0c864375c198cacc171ff373e76bfce2a85045" }
}

function M.config()
  local is_ok, lualine = pcall(require, "lualine")
  if not is_ok then
    vim.notify("[Error] lualine.nvim plugin, not found!", vim.log.levels.ERROR)
    return
  end

  lualine.setup({
    options = {
      globalstatus = true,
      theme = "catppuccin",
      disabled_filetypes = {},
      always_divide_middle = true,
      component_separators = { left = "|", right = "|" },
      section_separators = { left = "", right = "" },
    },

    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        { "filename", file_status = true, path = 1 },
        {
          "diff",
          colored = true,
          symbols = { added = "add: ", modified = "mod: ", removed = "rem: " },
        },
      },
      lualine_x = { "filetype" },
      lualine_y = { "location" },
      lualine_z = { "progress" },
    },
  })
end

return M
