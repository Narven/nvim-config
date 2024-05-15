return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", "csharp_ls", "cssls", "denols", "dockerls", "docker_compose_language_service", "gopls",
          "golangci_lint_ls", "helm_ls", "jsonls", "tsserver", "markdown_oxide", "marksman", "intelephense", "pylsp",
          "taplo", "tailwindcss", "vuels", "yamlls", "zls", "lemminx", "vimls", "rust_analyzer"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.gopls.setup({})
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.helm_ls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.markdown_oxide.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.lemminx.setup({})
      lspconfig.vimls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
