-----------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end


nvim_treesitter.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    'c',
  },
  sync_install = false,	-- Install parsers synchronously
  highlight = {
    enable = true,
  }
}


local status_ok, treesittercxt = pcall(require, 'treesitter-context')
if not status_ok then
  return
end

require'treesitter-context'.setup();
