local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "shinonome.lsp.mason"
require("shinonome.lsp.handlers").setup()
require "shinonome.lsp.null-ls"
