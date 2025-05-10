return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  modifiable = true,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({})
  end,
}
