local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("css", {
  s({
    name = "!important",
    trig = "!",
  }, {
    t(" !important"),
  }),

  s({
    name = "@media query",
    trig = "@media",
  }, {
    -- @media (${1}) {${2}};
    t("@media "),
    t("("),
    i(1),
    t({ ") {", "  " }),
    i(2),
    t({ "", "}" }),
  }),
})

