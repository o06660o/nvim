return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile", "BufWritePre" },
  init = function()
    vim.diagnostic.config({
      signs = false,
    })
    vim.keymap.set("n", "<Leader>d", function()
      vim.diagnostic.open_float()
    end)
  end,
}
