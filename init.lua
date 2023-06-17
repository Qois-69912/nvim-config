require('core/packer')
require('core/options')
require('core/keymaps')
require('core/autocmd')
require('core/color')

require('plugin/telescope')
require('plugin/treesitter')
require('plugin/comment')
require('plugin/surround')
require('plugin/autoclose')   -- It must loaded first before coc lsp or else it gonna break coc, idk why ??

require('plugin/cocLsp')
