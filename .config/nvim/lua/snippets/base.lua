local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local r = ls.restore_node
local extras = require("luasnip.extras")
local partial = require('luasnip.extras').partial

ls.add_snippets({
  s("prc", {
    t("arrowParens: 'avoid',"),
    t("singleQuote: true,"),
    t("bracketSpacing: true,"),
    t("endOfLine: 'lf',"),
    t("semi: false,"),
    t("tabWidth: 2,"),
    t("trailingComma: 'none'"),
  }),
  s('time', { partial(vim.fn.strftime, '%H:%M:%S') }),
  s('date', { partial(vim.fn.strftime, '%Y-%m-%d') }),
})

