return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.markdown = { "markdownlint" }
      opts.formatters = {
        markdownlint = {
          command = "markdownlint",
          args = {
            "--config",
            vim.fn.expand("~/.markdownlint.json"),
            "--fix",
            "$FILENAME",
          },
          stdin = false,
        },
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "markdown")
      table.insert(opts.ensure_installed, "markdown_inline")
    end,
  },
}
