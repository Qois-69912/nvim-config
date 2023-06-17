-- Neovim UI color scheme.
local status_ok, color_scheme = pcall(require, 'monokai')
if not status_ok then
  return
end

-- Monokai config
require('monokai').setup {
  palette = require('monokai').soda,
  italics = false
}

-- Remove background color
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd('hi LineNr guibg=NONE ctermbg=NONE')
vim.cmd('hi CursorLineNr guibg=NONE ctermbg=NONE')
