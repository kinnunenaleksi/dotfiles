local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.config.setup({
	enable_autosnippets = true,
})

ls.add_snippets("typ", {
	s({ trig = "mt", snippetType = "autosnippet" }, {
		t("$"),
		i(1),
		t(" $"),
		i(0),
	}),

	s({ trig = "mmt", snippetType = "autosnippet" }, {
		t({ "$", "    " }),
		i(1),
		t({ "", "$" }),
		i(0),
	}),

	s({ trig = "nnor", snippetType = "autosnippet" }, {
		t("|| "),
		i(1),
		t(" ||"),
		i(0),
	}),
})
