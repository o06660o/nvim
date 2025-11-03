return {
  {
    vim.lsp.enable("ocamllsp"),
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.ocaml = { "ocamlformat" }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "ocaml")
      table.insert(opts.ensure_installed, "ocaml_interface")
      table.insert(opts.ensure_installed, "ocamllex")
      table.insert(opts.ensure_installed, "menhir")
    end,
  },
}
