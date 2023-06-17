local status_ok, comment = pcall(require, 'nvim-surround')
if not status_ok then
  return
end

require('nvim-surround').setup({
  keymaps = {
    visual = 's',
    delete = 'ds',
    change = 'cs',
  },
})
