return {
  {
    vim.lsp.enable("cmake"),
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.cmake = { "cmake_format" }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "cmake")
    end,
  },
}
