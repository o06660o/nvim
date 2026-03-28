return {
  "zbirenbaum/copilot.lua",
  enabled = false,
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
