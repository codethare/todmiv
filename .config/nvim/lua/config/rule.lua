vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.expandtab = true
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.shell = 'fish'
vim.opt.inccommand = 'split'
vim.opt.wrap = false
vim.opt.wildmenu = true
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' }          -- finding search down into subfolders
vim.opt.wildmode = { 'longest', 'list', 'full' }
vim.opt.wildignore:append { '*/node_modules/*' }
-- vim.opt.listchars = { nbsp = '¬',tab = '»·',trail = '·',extends = '>' }
-- vim.opt.listchars.extends = 'nbsp:¬,tab:»·,trail:·,extends:>'

vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- vim.wo.number = true
-- vim.wo.relativenumber = true
-- vim.opt.colorcolumn = "80"     --hei line

-- status line
-- vim.o.laststatus = 0

-- Set leader to space key
vim.g.mapleader = ' '

-- Set highlight on search
vim.o.hlsearch = true

-- Save undo history
-- vim.opt.undofile = true

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

-- undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Cs = "\e[4:0m"]])

-- tab jump with name
-- (if set, when we switch between buffers, it will not split more than once. It will switch to the existing buffer instead)
vim.opt.switchbuf = { 'usetab' }

-- turn off paste mode wthen leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- npm && yarn $PATH
-- vim.cmd([[ let $PATH = expand('$HOME/.config/yarn/nvimlsp/node_modules') . '/.bin:' . $PATH ]])
vim.cmd([[ let $PATH = expand('$HOME/.config/yarn/svelteLsp/node_modules') . '/.bin:' . $PATH ]])

vim.api.nvim_exec([[
  autocmd BufWritePre * :%s/\s\+$//e
  unmap Y
]], true)

-- vim.api.nvim_exec[[ set list listchars=nbsp:¬,tab:\|·,trail:·,extends: ]]
-- vim.api.nvim_command[[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() ]]

-- netrw
vim.g.netrw_winsize = 30
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 1
