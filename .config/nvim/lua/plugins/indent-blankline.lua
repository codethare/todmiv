local status, indent_blankline = pcall(require, "indent_blankline")
if (not status) then return end

vim.opt.termguicolors = true
vim.cmd [[ highlight IndentBlanklineIndent1 guifg=#222222 gui=nocombine ]]

indent_blankline.setup({
  -- show_current_context = true,         -- treesitter
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
  }
})
