return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")
    npairs.setup({})
    npairs.remove_rule('"')
    npairs.remove_rule("'")
    npairs.remove_rule("`")
  end,
}
