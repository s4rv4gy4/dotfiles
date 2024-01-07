--[[

  references:
    popup.nvim:
       auth: https://github.com/nvim-lua
       repo: https://github.com/nvim-lua/popup.nvim
       hash: https://github.com/nvim-lua/popup.nvim/commit/b7404d35d5d3548a82149238289fa71f7f6de4ac

    plenary.nvim:
      auth: https://github.com/nvim-lua
      repo: https://github.com/nvim-lua/plenary.nvim
      docs: https://raw.githubusercontent.com/nvim-lua/plenary.nvim/master/doc/plenary-test.txt
      hash: https://github.com/nvim-lua/plenary.nvim/commit/55d9fe89e33efd26f532ef20223e5f9430c8b0c0

    nui.nvim:
      auth: https://github.com/MunifTanjim
      repo: https://github.com/MunifTanjim/nui.nvim
      hash: https://github.com/MunifTanjim/nui.nvim/commit/35da9ca1de0fc4dda96c2e214d93d363c145f418

    nvim-web-devicons:
      auth: https://github.com/nvim-tree
      repo: https://github.com/nvim-tree/nvim-web-devicons
      hash: https://github.com/nvim-tree/nvim-web-devicons/commit/db0c864375c198cacc171ff373e76bfce2a85045

]]

local M = {

  {
    "nvim-lua/popup.nvim",
    name = "popup",
    commit = "b7404d35d5d3548a82149238289fa71f7f6de4ac",
  },

  {
    "nvim-lua/plenary.nvim",
    name = "plenary",
    commit = "55d9fe89e33efd26f532ef20223e5f9430c8b0c0",
  },

  {
    "MunifTanjim/nui.nvim",
    name = "nui",
    commit = "35da9ca1de0fc4dda96c2e214d93d363c145f418",
  },

  {
    "nvim-tree/nvim-web-devicons",
    name = "devicons",
    commit = "db0c864375c198cacc171ff373e76bfce2a85045",
  },
}

return M
