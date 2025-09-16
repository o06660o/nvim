return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = "hrsh7th/cmp-nvim-lsp",
  opts = function()
    local cmp = require("cmp")
    return {
      sources = cmp.config.sources({ { name = "nvim_lsp" } }),
      performance = { max_view_entries = 10 },
      mapping = cmp.mapping.preset.insert({
        ["<C-e>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      }),
    }
  end,
}
