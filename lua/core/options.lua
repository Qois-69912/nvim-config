local o = vim.opt

-----------------------------------------------------------
-- General
-----------------------------------------------------------
o.mouse = 'a'                               -- Enable mouse support
o.clipboard = 'unnamedplus'                 -- Copy/paste to system clipboard
o.swapfile = false                          -- Don't use swapfile
o.completeopt = 'menuone,noinsert,noselect' -- Autocomplete options
o.shell = 'bash'                            -- Weird Quirks using cygwin
o.autochdir = true
o.backup = false
o.writebackup = false

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
o.number = true         -- Show line number
o.signcolumn = 'yes'    -- Show signcolumn
o.showmatch = true      -- Highlight matching parenthesis
o.number = true         -- Show line number
o.splitright = true     -- Vertical split to the right
o.splitbelow = true     -- Horizontal split to the bottom
o.ignorecase = true     -- Ignore case letters when search
o.smartcase = true      -- Ignore lowercase for the whole pattern
o.hlsearch = false      -- Disable previous search highlights
o.wrap = true           -- Wrap text
o.breakindent = true    -- Preserve the indentation of a virtual line
o.linebreak = true      -- Wrap on word boundary
o.termguicolors = true  -- Enable 24-bit RGB colors
o.laststatus=3          -- Set global statusline

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
local tabwidth = 2
o.expandtab = true        -- Use spaces instead of tabs
o.shiftwidth = tabwidth
o.tabstop = tabwidth
o.smartindent = true      -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
o.hidden = true           -- Enable background buffers
o.history = 100           -- Remember N lines in history
o.lazyredraw = true       -- Faster scrolling
o.synmaxcol = 240         -- Max column for syntax highlight
o.updatetime = 250        -- ms to wait for trigger an event

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
o.shortmess:append "sI"

