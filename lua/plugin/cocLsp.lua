local status_ok, coc = pcall(require, 'coc-lsp')
if status_ok then
  return
end


-- Autocomplete
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end


--------------------------------------------
-- Keymaps
--------------------------------------------
local function keyset(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

-- Cycle between options
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Enter to confirm
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Symbol Renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})

-- Navigate Diagnostic
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- Jump into next snippet placeholder
keyset('i', "C-j", "<Plug>(coc-snippets-expand-jump)", {silent = true})
