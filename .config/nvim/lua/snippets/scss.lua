local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")

ls.add_snippets("scss", {
  s({
    name = "@test function",
    trig = "@test",
  }, {
    i(1, "sometext"),
    t(" // "),
    extras.rep(1),
  }),
  -- not working?
  s({
    name = "rem function",
    trig = "rem",
  }, {
    -- rem(${1})
    t("rem("),
    i(1, ""),
    t(")"),
  }),

  s({
    name = "scss variable",
    trig = "$var",
  }, {
    -- $${1:variable}: ${2:value};
    t("$"),
    i(1, "variable"),
    t(": "),
    i(2, "value"),
    t(";"),
  }),

  s({
    name = "@import",
    trig = "@import",
  }, {
    -- @import '${1}';
    t("@import '"),
    i(1),
    t("';"),
  }),

  s({
    name = "@mixin",
    trig = "@mixin",
  }, {
    -- @mixin ${1:name}(${2}) {${3}};
    t("@mixin "),
    i(1),
    t("("),
    i(2, "name"),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s({
    name = "@include",
    trig = "@include",
  }, {
    -- @include ${1:mixin}(${2});
    t("@include "),
    i(1, "mixin"),
    t("("),
    i(2),
    t(");"),
  }),

  s({
    name = "@extend",
    trig = "@extend",
  }, {
    -- @extend ${1:selector};
    t("@extend "),
    i(1, "selector"),
    t(";"),
  }),

  s({
    name = "@function",
    trig = "@function",
  }, {
    -- @function ${1:name}(${2:args}) {${3}}
    t("@function "),
    i(1, "name"),
    t("("),
    i(2, "args"),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s({
    name = "@if",
    trig = "@if",
  }, {
    -- @if ${1:condition} {${2}}
    t("@if "),
    i(1, "condition"),
    t({ " {", "  " }),
    i(2),
    t({ "", "}" }),
  }),

  s({
    name = "@if ... @else",
    trig = "@ife",
  }, {
    -- @if ${1:condition} {${2}} @else {${3}}
    t("@if "),
    i(1, "condition"),
    t({ " {", "  " }),
    i(2),
    t({ "", "} @else {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s({
    name = "@else if",
    trig = "@eif",
  }, {
    -- @else if ${1:condition} {${2}}
    t("@if "),
    i(1, "condition"),
    t({ " {", "  " }),
    i(2),
    t({ "", "}" }),
  }),

  s({
    name = "@for",
    trig = "@for",
  }, {
    -- @for ${1:$i} from ${2:1} through ${3:3} {${4}}
    t("@for "),
    i(1, "$i"),
    t(" from "),
    i(2, "1"),
    t(" through "),
    i(3, "3"),
    t({ " {", "  " }),
    i(4),
    t({ "", "}" }),
  }),

  s({
    name = "@each",
    trig = "@each",
  }, {
    -- @each ${1:$item} in ${2:items} {${3}}
    t("@each "),
    i(1, "$item"),
    t(" in "),
    i(2, "items"),
    t({ " {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s({
    name = "@while",
    trig = "@while",
  }, {
    -- @while ${1:$i} from ${2:>} ${3:0} {${4}}
    t("@while "),
    i(1, "$i"),
    t(" "),
    i(2, ">"),
    t(" "),
    i(3, "0"),
    t({ " {", "  " }),
    i(4),
    t({ "", "}" }),
  }),

  s({
    name = "@debug",
    trig = "@debug",
  }, {
    -- @debug ${1:&};
    t("@debug "),
    i(1, "&"),
    t(";"),
  }),
})

