return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.lua = { "stylua" }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "lua")
      table.insert(opts.ensure_installed, "luadoc")
      table.insert(opts.ensure_installed, "luap")
    end,
  },
}
