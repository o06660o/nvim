-- No auto comment when entering new line.
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.cmd("set formatoptions-=ro")
  end,
})

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.opt_local.number = false
  end,
})
vim.api.nvim_create_autocmd({ "TermOpen", "WinEnter" }, {
  pattern = "term://*",
  callback = function()
    vim.cmd("startinsert")
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.inc" },
  callback = function()
    vim.opt_local.filetype = "cpp"
  end,
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.ll" },
  callback = function()
    vim.opt_local.filetype = "llvm"
  end,
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.mll" },
  callback = function()
    vim.opt_local.filetype = "ocamllex"
  end,
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.mly" },
  callback = function()
    vim.opt_local.filetype = "menhir"
  end,
})

-- Convert markdown to pdf
vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
  pattern = "markdown",
  callback = function(args)
    local bufnr = args.buf
    if vim.b[bufnr].markdown_keymap_set then
      return
    end
    vim.b[bufnr].markdown_keymap_set = true

    vim.api.nvim_buf_set_keymap(
      bufnr,
      "n",
      "<C-A-N>",
      ":wa<CR>:!pandoc '%' -o '%:r.pdf' --pdf-engine=xelatex -V fontsize=12pt -V geometry:left=0.6in,right=0.6in,top=0.7in,bottom=0.7in -V monofont='FiraMono Nerd Font' -V italicfont='*' -V CJKmainfont='Sarasa Term SC Nerd' -V CJKmonofont='Sarasa Term SC Nerd' -V fontset=none <CR>",
      { noremap = true }
    )
    vim.api.nvim_buf_set_keymap(
      bufnr,
      "n",
      "<F5>",
      ":wa<CR>:silent !zathura '%:r.pdf' >/dev/null 2>&1 &<CR>",
      { noremap = true, silent = true }
    )
  end,
})
