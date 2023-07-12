vim.cmd[[
	let g:vsnip_snippet_dir = "$HOME/.config/nvim/.snippets/"
	let g:vsnip_filetypes = {}

	let g:vsnip_filetypes.javascript = [ 'javascript/javascript' ]
	let g:vsnip_filetypes.javascriptreact = [ 'javascript/javascript', 'javascript/react', 'javascript/react-native', 'javascript/next', 'javascript/react-es7' ]
	let g:vsnip_filetypes.typescript = [ 'javascript/typescript' ]
	let g:vsnip_filetypes.typescriptreact = [ 'javascript/typescript', 'javascript/react-ts', 'javascript/react-native-ts', 'javascript/next-ts', 'javascript/react-es7' ]
	let g:vsnip_filetypes.vue = [ 'frameworks/vue/html', 'frameworks/vue/pug', 'frameworks/vue/javascript', 'frameworks/vue/vue' ]
	let g:vsnip_filetypes.python = [ 'python/base', 'python/comprehension', 'python/debug', 'python/python', 'python/unittest']
	let g:vsnip_filetypes.git = [ 'gitcommit' ]
	let g:vsnip_filetypes.zsh = [ 'shell' ]
	let g:vsnip_filetypes.shell = [ 'shell' ]
	let g:vsnip_filetypes.sh = [ 'shell' ]
	let g:vsnip_filetypes.shellscript = [ 'shell' ]
	let g:vsnip_filetypes.css = [ 'css' ]
	let g:vsnip_filetypes.scss = [ 'css' ]
	let g:vsnip_filetypes.less = [ 'css' ]
	let g:vsnip_filetypes.sass = [ 'css' ]
	let g:vsnip_filetypes.stylus = [ 'css' ]
	let g:vsnip_filetypes.pug = [ 'html' ]

  imap <expr> <Tab>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<Tab>'
]]

