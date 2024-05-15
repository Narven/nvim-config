return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "go", "javascript", "rust", "vim", "c", "html"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}


