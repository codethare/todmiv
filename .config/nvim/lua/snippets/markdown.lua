local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local r = ls.restore_node
local extras = require("luasnip.extras")
local partial = require('luasnip.extras').partial
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("markdown", {
  s('blog', fmt(
    [[
      ---
      title: "{1}"
      description: "{2}"
      layout: "{3}"
      pubDate: "{4}"
      tags:
      - {5}
      ---
    ]],
    {
      i(1, 'title_name'),
      i(2, 'des_msg'),
      i(3, 'file/to/locatsion'),
      i(4, 'post_date'),
      i(5, 'tab'),
    }
  )),
  s('code', {
    t('```'),
    i(1, ''),
    t({'', '' }),
    i(2, 'ur_code'),
    t({'', '```'}),
  }),
  s('link', {
    t('['),
    i(1, 'msg'),
    t(']'),
    t('("'),
    i(2, ''),
    t('"'),
    t(')'),
  }),
  s('footnotes', {
    i(1, 'notes'),
    t('[^1]'),
    t({'', '[^1]: '}),
    i(2, 'from'),
  }),
  s('taskLists', {
    t('- ['),
    i(1, 'space_or_x'),
    t('] '),
    i(2, 'why?'),
  }),
  s('tables', fmt(
    [[
      | {} | {} |
      |-------|-------|
      | {} | {} |
      | {} | {} |
    ]],
    {
      i(1, 'fir_header'),
      i(2, 'sec_header'),
      i(3, 'cell_1'),
      i(4, 'cell_2'),
      i(5, 'fir_column'),
      i(6, 'sec_column'),
    }
  )),
  s('imgLocal', {
    t('!['),
    i(1, 'Img_name'),
    t(']('),
    i(2, 'path/to/localstion'),
    t(') "'),
    i(3, 'Optional_Title'),
    t('")'),
  }),
  s('imgUrl', {
    i(1, 'Format'),
    t(': !['),
    i(2, 'Img_name'),
    t('](url "'),
    i(3, 'Url_Localtsion'),
    t(') "'),
  }),
  s('time', { partial(vim.fn.strftime, '%H:%M:%S') }),
  s('date', { partial(vim.fn.strftime, '%m/%d/%Y') }),
})
