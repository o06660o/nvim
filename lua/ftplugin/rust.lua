return {
  {
    vim.lsp.enable("rust_analyzer"),
    vim.lsp.config("rust_analyzer", {
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            targetDir = "/home/o06660o/.cache/rust-analyzer",
          },
        },
      },
    }),
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.rust = { "rustfmt" }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "rust")
    end,
  },
}
