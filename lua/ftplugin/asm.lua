return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "asm")
      -- Unofficial RISC-V parser.
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.riscv = {
        install_info = {
          url = "https://github.com/omeyenburg/tree-sitter-riscv",
          branch = "main",
          files = { "src/parser.c", "src/scanner.c" },
          generate_requires_npm = false,
          requires_generate_from_grammar = false,
        },
        filetype = { "riscv" },
      }
      table.insert(opts.ensure_installed, "riscv")
    end,
  },
}
