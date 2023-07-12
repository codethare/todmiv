local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local r = ls.restore_node

ls.add_snippets("html", {
  s("!", {
    t("<!DOCTYPE>"),
    t({ "", "" }),
  }),
  s("h5", {
    t("<!DOCTYPE>"),
    t({ "","<html lang="}),
    i(1, "en"),
    t(">"),
    t({ "", "  <head>" }),
    t({ "", "    <title>" }),
    i(2, ""),
    t("</title>"),
    t({ "", '    <meta charset="UTF-8">' }),
    t({ "", '    <meta name="viewport" content="width=device-width, initial-scale=1">' }),
    t({ "", '    <link href="' }),
    i(3, ""),
    t('.css rel="stylesheet">'),
    t({ "", "  </head>" }),
    t({ "", "  <body>" }),
    i(4, {"", ""}),
    t({"  </body>" }),
    t({ "", "</html>" })
  }),
  s("div", {
    t("<div>"),
    i(1, ""),
    t("</div>"),
  }),
  s("p", {
    t("<p>"),
    i(1, ""),
    t("</p>")
  }),
  s("code", {
    t('<code>'),
    i(1, "yourCode"),
    t('</code>'),
    i(2, ''),
  }),
  s("a", {
    t('<a href=">'),
    i(1, 'yourLink'),
    t('>'),
    i(2, ''),
    t('</a>'),
  }),
  s("input", {
    t('input type="'),
    i(1, ''),
    t('" name="'),
    i(2, ''),
    t('" value="'),
    i(3, ''),
    t('">'),
  }),
  s("ul", {
      t("<ul>"),
      t({"", ""}),
      i(1, ""),
      t("</ul>"),
  }),
  s(".", {
    t("<"),
    i(1, ""),
    t(' className="'),
    i(2, "yourClassName"),
    t('" />'),
  }),
  s("#", {
    t("<"),
    i(1, ''),
    t(' id="'),
    i(2, 'your_ID_Name'),
    t('">'),
    i(3, ''),
    t('</>')
  }),

})

