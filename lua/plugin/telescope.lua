---------------------------------------------
-- Telescope.nvim
---------------------------------------------
local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

--- Keymaps --------------------------------
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fv', builtin.treesitter, {})
vim.keymap.set('n', '<M-e>', ':Telescope file_browser<CR>', { noremap = true })

---- Config ----------------------------------------------
local telescopeAct = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup {
  mappings = {
    ["i"] = {
      ["<M-k>"] = telescopeAct.move_selection_previous,
      ["<M-j>"] = telescopeAct.move_selection_next,
      ["<M-v>"] = telescopeAct.select_vertical, -- open in vertical
      ['<M-V>'] = telescopeAct.select_horizontal, -- open in horizontal
      ['<M-t>'] = telescopeAct.select_tab, -- open in new tab
    },
    ["n"] = {
      ["<M-k>"] = telescopeAct.move_selection_previous,
      ["<M-j>"] = telescopeAct.move_selection_next,
      ["<M-v>"] = telescopeAct.select_vertical, -- open in vertical
      ['<M-V>'] = telescopeAct.select_horizontal, -- open in horizontal
      ['<M-t>'] = telescopeAct.select_tab, -- open in new tab
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      hijack_netrw = true,	-- disables netrw and
      dir_icon = "",
      mappings = {
        ['i'] = {
          ["<M-k>"] = telescopeAct.move_selection_previous,
          ["<M-j>"] = telescopeAct.move_selection_next,
          ["<M-v>"] = telescopeAct.select_vertical, -- open in vertical
          ['<M-V>'] = telescopeAct.select_horizontal, -- open in horizontal
          ['<C-r>'] = fb_actions.rename, -- Rename File
          ['<C-d>'] = fb_actions.remove, -- Delete file
          ['<C-n>'] = fb_actions.create	-- New File / folder
        },
        ['n'] = {
          ["<M-k>"] = telescopeAct.move_selection_previous,
          ["<M-j>"] = telescopeAct.move_selection_next,
          ["<M-v>"] = telescopeAct.select_vertical, -- open in vertical
          ['<M-V>'] = telescopeAct.select_horizontal, -- open in horizontal
          ['<C-r>'] = fb_actions.rename, -- Rename File
          ['<C-d>'] = fb_actions.remove, -- Delete file
          ['<C-n>'] = fb_actions.create	-- New File / folder
        },
      },
    },
  }
}

-- Call telescope file browser extension
require("telescope").load_extension "file_browser"
