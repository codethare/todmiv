local keymap = vim.keymap

-- __________________________________________
--                                    New tab
keymap.set('n', '<leader>T', ':terminal <CR> a')
keymap.set('n', 'K', ':terminal mkdir ')
keymap.set('n', 'te', ':tabedit<CR>:Explore<CR>')
keymap.set('n', 'st', ':split<CR>:resize 15<CR>:Explore<CR>')
keymap.set('n', 'vt', ':vsplit<CR>:Explore<CR>')
keymap.set('n', 'ST', [[:split \| :resize 15 \| :terminal <CR> a]])
keymap.set('n', 'VT', [[:vsplit \| :terminal <CR> a]])



-- __________________________________________
--                               windows_size
keymap.set('n', '<c-w>[', ':vertical resize -5<cr>')
keymap.set('n', '<c-w>]', ':vertical resize +5<cr>')
keymap.set('n', '<c-w>-', ':resize -5<cr>')
keymap.set('n', '<c-w>+', ':resize +5<cr>')

-- __________________________________________
--                              jump (ontime)
keymap.set('i', '<C-U>', '<C-G>u<C-U>')

-- __________________________________________
--                                 Select all
-- keymap.set('n', '<C-a>', 'gg<S-v>G')

-- __________________________________________
--                           capslock N shift
keymap.set('v', '<leader>u', 'gu')
keymap.set('v', '<leader>U', 'gu')

-- __________________________________________
-- Move tab
keymap.set('n', '<C-Tab>', ':sb<Space>')

-- __________________________________________
--                                Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- __________________________________________
--                              Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- __________________________________________
--                        dont know what t is
-- keymap.set('n', '<leader>c', "<cmd>lua require('ts_context_commentstring.internal').update_commentstring()<CR>")

-- __________________________________________
--                            file exp: netrw
keymap.set('n', '<C-b>', ':Explore<Return>')

local function netrw_mapping()
  local bufmap = function(lhs, rhs)
    local opts = {buffer = true, remap = true}
    vim.keymap.set('n', lhs, rhs, opts)
  end

  -- close window
  bufmap('<leader>dd', ':Lexplore<CR>')
  bufmap('<leader>da', ':Lexplore<CR>')

  -- Better navigation
  bufmap('H', 'u')
  bufmap('h', '-^')
  bufmap('l', '<CR>')
  bufmap('L', '<CR>:Lexplore<CR>')

  -- Toggle dotfiles
  bufmap('.', 'gh')
end

local user_cmds = vim.api.nvim_create_augroup('user_cmds', {clear = true})
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  group = user_cmds,
  desc = 'Keybindings for netrw',
  callback = netrw_mapping
})

