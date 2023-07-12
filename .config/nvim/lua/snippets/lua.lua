local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local r = ls.restore_node
local extras = require("luasnip.extras")

ls.add_snippets("lua", {
  s({
    name = "luasnip-keymap",
    trig = "snipkey",
  }, {
    t("s({"),
    t({"", '  name = "'}),
    i(1, ""),
    t('",'),
    t({"", }),
    t({"", '  trig = "'}),
    i(2, ""),
    t('",'),
    t({ "", "}, {"}),
    t({ "", "  " }),
    i(3, ""),
    t({"", "}),"}),
  }),
  s('for', {
    t('for '),
    i(1, ""),
    t(' in '),
    i(2, ""),
    t(' do'),
    i(3, ""),
    t({'', 'end'}),
  }),
  s('if', {
    t('if '),
    i(1, ''),
    t(' then'),
    i(2, ''),
    t({'', 'end'}),
  }),
})

