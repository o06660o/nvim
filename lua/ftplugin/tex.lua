return {
  {
    vim.lsp.enable("texlab"),
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "tex",
      callback = function(args)
        vim.keymap.set("n", "<C-A-n>", function()
          require("knap").toggle_autopreviewing()
        end, { buffer = args.buf })
      end,
    }),
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft.tex = { "latexindent" }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "latex")
      table.insert(opts.ensure_installed, "bibtex")
    end,
  },
}
