--TEMP
print 'Got to init.lua (1)'


local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

--TEMP
print 'Got to init.lua (2)'

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
