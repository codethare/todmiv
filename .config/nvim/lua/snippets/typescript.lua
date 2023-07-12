local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescript", {
  s({
    name = "type definition",
    trig = "type",
  }, {
    t("type "),
    i(1, ""),
    t({ " = {", "  " }),
    i(2, ""),
    t({ "", "}" }),
  }),
  s({
    name = "interface definition",
    trig = "interface",
  }, {
    t("interface "),
    i(1, ""),
    t({ " {", "  " }),
    i(2, ""),
    t({ "", "}" }),
  }),
})


