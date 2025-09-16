return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.make = { "mbake" }
      opts.formatters.mbake = {
        command = "mbake",
        args = { "format", "$FILENAME" },
        stdin = false,
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "make")
    end,
  },
}
