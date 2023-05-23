local colorscheme = "nord"

if colorscheme == "nord" then
  vim.g.nord_constrast = false
  vim.g.nord_borders = true
  vim.g.nord_disable_background = false
  vim.g.nord_italic = false
  vim.g.nord_uniform_diff_background = true
  vim.g.nord_bold = false

  require('nord').set()
  return
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
