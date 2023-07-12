local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node

ls.add_snippets("vue", {
  s({
    name = "Vue event handler",
    trig = "veh",
  }, {
    -- @${1:click}="${2:handleClick}"
    t("@"),
    i(1, "click"),
    t('="'),
    i(2, "handleClick"),
    t('"'),
  }),

  s({
    name = "Import from icSrc",
    trig = "vimport",
  }, {
    -- import Bb${1:Component} from 'icSrc/${2}/${3:${1}}';
    t("import Bb"),
    i(1, "Component"),
    t(" from 'icSrc/"),
    i(2),
    t("/"),
    d(3, function(args)
      return sn(nil, i(1, args[1]))
    end, { 1 }),
    t("';"),
  }),
})


