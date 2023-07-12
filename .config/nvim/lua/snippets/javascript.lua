local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local r = ls.restore_node
local extras = require("luasnip.extras")

ls.add_snippets("javascript", {
  s("ed", {
    t("export default "),
    i(1, "name"),
  }),
  s("em", {
    t("module.exports = "),
    i(1, "name"),
  }),
  s("ea", {
    t("export async "),
    i(1, 'name')
  }),
  s("ef", {
    c(1, {
      {
        -- export ${2:thing} from '${1:module}'
        t("export "),
        r(2, "thing"),
        t(" from '"),
        r(1, "module"),
        t("';"),
      }, {
        -- export { ${2:thing} } from '${1:module}'
        t("export { "),
        r(2, "thing"),
        t(" } from '"),
        r(1, "module"),
        t("';"),
      }, {
        -- export { ${2:thing} as ${3:name} } from '${1:module}'
        t("export { "),
        r(2, "thing"),
        t(" as "),
        i(3, "name"),
        t(" } from '"),
        r(1, "module"),
        t("';"),
      },
    }),
  }, {
      stored = {
        module = i(1, "module"),
        thing = i(2, "thing"),
      },
    }
  ),
  s("const", {
    -- const ${1:name} = ${2:value};
    t("const "),
    i(1, "name"),
    t(" = "),
    i(2, "value"),
    t(";"),
  }),

  s("let", {
    -- let ${1:name} = ${2:value};
    t("let "),
    i(1, "name"),
    t(" = "),
    i(2, "value"),
    t(";"),
  }),

  s("im", {
    c(1, {
      {
        -- import ${2:thing} from '${1:module}'
        t("import "),
        r(2, "thing"),
        t(" from '"),
        r(1, "module"),
        t("';"),
      }, {
        -- import { ${2:thing} } from '${1:module}'
        t("import { "),
        r(2, "thing"),
        t(" } from '"),
        r(1, "module"),
        t("';"),
      }, {
        -- import { ${2:thing} as ${3:name} } from '${1:module}'
        t("import { "),
        r(2, "thing"),
        t(" as "),
        i(3, "name"),
        t(" } from '"),
        r(1, "module"),
        t("';"),
      },
    }),
  }, {
      stored = {
        module = i(1, "module"),
        thing = i(2, "thing"),
      },
    }
  ),

  s("ret", {
    -- return ${1:value};
    t("return "),
    i(1, "value"),
    t(";"),
  }),

  s("te", {
    -- ${1:condition} ? ${2:true} : ${3:false}
    i(1, "condition"),
    t({ "  ", "? " }),
    i(2, "true"),
    t({ "  ", ": " }),
    i(3, "false"),
  }),

  s("ta", {
    -- const ${1:name} = ${2:condition} ? ${3:true} : ${4:false}
    t("const "),
    i(1, "name"),
    t(" = "),
    i(2, "condition"),
    t({ "  ", "? " }),
    i(3, "true"),
    t({ "  ", ": " }),
    i(4, "false"),
  }),

  s({
    name = "if statement",
    trig = "if",
  }, {
    -- if (${1:condition}) {${2:true}}
    t("if ("),
    i(1, "condition"),
    t({ ") {", "  " }),
    i(2, "true"),
    t({ "", "}" }),
  }),

  s({
    name = "if ... else statement",
    trig = "ife",
  }, {
    -- if (${1:condition}) {${2:true}} else {${3:false}}
    t("if ("),
    i(1, "condition"),
    t({ ") {", "  " }),
    i(2, "true"),
    t({ "", "} else {", "  " }),
    i(3, "false"),
    t({ "", "}" }),
  }),

  s({
    name = "else if statement",
    trig = "elseif",
  }, {
    -- else if (${1:condition}) {${2:true}}
    t("else if ("),
    i(1, "condition"),
    t({ ") {", "  " }),
    i(2, "true"),
    t({ "", "}" }),
  }),

  s({
    name = "else statement",
    trig = "else",
  }, {
    -- else {${1:false}}
    t({ "else { ", "  " }),
    i(1, "false"),
    t({ "", "}" }),
  }),

  s({
    name = "for loop",
    trig = "for",
  }, {
    -- for (let ${1:i} = 0; $1 < ${2:arr.length}; $1++) {${3:console.log(i)}}
    t("for (let "),
    i(1, "i"),
    t(" = 0; "),
    extras.rep(1),
    t(" < "),
    i(2, "arr.length"),
    t("; "),
    extras.rep(1),
    t({ "++) {", "  " }),
    i(3, "console.log(i);"),
    t({ "", "}" }),
  }),

  s({
    name = "for ... of loop",
    trig = "forof",
  }, {
    -- for (const ${1:iteration} of ${2:iterable}) {${3}}
    t("for (const "),
    i(1, "iteration"),
    t(" of "),
    i(2, "iterable"),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s({
    name = "for ... in loop",
    trig = "forin",
  }, {
    -- for (const ${1:iteration} in ${2:object}) {${3}}
    t("for (const "),
    i(1, "iteration"),
    t(" of "),
    i(2, "object"),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s({
    name = "arrow function",
    trig = "afn",
  }, {
    -- (${1}) => { ${2} }
    t("("),
    i(1),
    t({ ") => {", "  " }),
    i(2),
    t({ "", "}" }),
  }),

  s({
    name = "console.log",
    trig = "cl",
  }, {
    -- console.log(${1});
    t("console.log("),
    i(1),
    t(");"),
  }),

  s({
    name = "console.log",
    trig = "loga",
  }, {
    -- console.log('❌❌❌ ${1}', ${2});
    t("console.log('❌❌❌ "),
    i(1),
    t("', "),
    i(2),
    t(");"),
  }),

  s({
    name = "console.log",
    trig = "logb",
  }, {
    -- console.log('🚧🚧🚧 ${1}', ${2});
    t("console.log('🚧🚧🚧 "),
    i(1),
    t("', "),
    i(2),
    t(");"),
  }),

  s({
    name = "multiline comment",
    trig = "multiline comment",
  }, {
    -- /**
    --  * ${0:comment}
    --  */
    t({ "/**", " * " }),
    i(0, "comment"),
    t({ "", " */" }),
  }),
})


