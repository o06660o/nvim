return {
  "frabjous/knap",
  init = function()
    vim.g.knap_settings = {
      texoutputext = "pdf",
      textopdf = "latexmk --shell-escape -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
      textopdfviewerlaunch = "zathura %outputfile%",
      textopdfviewerrefresh = "kill -HUP %pid%",
    }
  end,
}
