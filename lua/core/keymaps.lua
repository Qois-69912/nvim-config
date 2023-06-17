-----------------------------------------------------------
-- Define functions for remapping keys
-----------------------------------------------------------

-- Note ----------------------------------------------------
-- mode = Mode where the keybinding should execute.
-- lhs = is the key we want to bind.
-- rhs = is the action we want to execute. It can be a string with a command or an expression.
-- opts = options
-- More info at https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
--------------------------------------------------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Change leader to a space
vim.g.mapleader = ' '

-- Map Esc to jk
map('i', 'jk', '<Esc>')

-- Paste new text into next line
map('n', 'p', ':pu<CR>')
map('n', 'P', ':pu!<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Navigating Warp line
map('n', 'j', 'gj')
map('n', 'k', 'gk')

-- Fast exit using zz (with saving), zq (without saving)
map('n', 'zz', 'ZZ')
map('n', 'zq', 'ZQ')

-- Undo is (u), Redo is (U)
map('n', 'U', '<C-r>')

-- Split using Alt + v (Vertical) and Alt + V (Horizontal)
map('n', '<M-v>', ':vnew<CR>')
map('n', '<M-V>', ':new<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<M-h>', '<C-w>h')
map('n', '<M-j>', '<C-w>j')
map('n', '<M-k>', '<C-w>k')
map('n', '<M-l>', '<C-w>l')

-- Open Terminal
map('n', '<M-t>', ':term<CR>')

-- Use jk to switch from terminal mode to normal mode
map('t', 'jk', '<C-\\><C-n>')

-- Create new tab using ctrl + t, closse tab using ctrl + w
map('n', '<C-t>', ':tabedit<CR>')
map('n', '<C-w>', ':tabclose<CR>')

-- Move between tabs
map('n', '<M-1>', '1gt')
map('n', '<M-2>', '2gt')
map('n', '<M-3>', '3gt')
map('n', '<M-4>', '4gt')
map('n', '<M-5>', '5gt')
