return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        debug = true,
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          require("none-ls.formatting.eslint_d")
        },
      })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
  },
}
