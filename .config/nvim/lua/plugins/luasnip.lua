local status, luasnip = pcall(require, "luasnip")
if (not status) then return end

local ls = require("luasnip")

-- require('luasnip.loaders.from_lua').load({
--   paths = { '$HOME/.config/nvim/lua/snippets/' },
-- })

ls.filetype_extend("", { "" })
ls.filetype_extend("scss", { "css" })
ls.filetype_extend("astro", { "javascript", "html" })
ls.filetype_extend("svelte", { "html", "javascript", "css" })
ls.filetype_extend("typescript", { "javascript" })
ls.filetype_extend("vue", { "html", "javascript", "css", "scss" })
ls.filetype_extend("javascript", { "javascript", "css", "scss" })
ls.filetype_extend("javascriptreact", { "html", "javascript", "css", "scss" })
ls.filetype_extend("typescriptreact", { "html", "javascript", "css", "scss" })
ls.filetype_extend("mdx", { "javascript", "base"  })
ls.filetype_extend("markdown", { "base", "markdown" })

-- require("snippets.html")
require("snippets.base")
require("snippets.css")
require("snippets.scss")
require("snippets.javascript")
require("snippets.typescript")
require("snippets.vue")
require("snippets.html")
require("snippets.lua")
require("snippets.markdown")

vim.cmd[[
  imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
]]

