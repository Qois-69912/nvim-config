-- AutoClose Config
local status_ok, autoclose = pcall(require, 'autoclose')
if not status_ok then
  return
end

require("autoclose").setup({
  disable_when_touch = true,
})
