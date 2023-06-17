local status_ok, comment = pcall(require, 'Comment')
if not status_ok then
  return
end

require('Comment').setup({
  toggler = {
    line = 'cc',
    block = 'cb',
  },
  opleader = {
    line = 'cc',
    block = 'cb',
  }
})

