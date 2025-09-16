return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  cmd = "Copilot",
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = { accept = "<S-Tab>" },
    },
    filetypes = {
      text = false,
      yaml = false,
      markdown = false,
    },
  },
}
