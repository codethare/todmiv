local util          = require 'theme/abscs.util'
local theme         = require 'theme/abscs.highlight'

vim.o.background    = 'dark'
vim.g.colors_name   = 'abscs'

util.load(theme)
