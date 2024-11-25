local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

local function setup(generate_lorem)
	-- Menambahkan snippet ke LuaSnip
	ls.add_snippets("all", {
		s(
			"lorem",
			f(function()
				return generate_lorem(50)
			end, {})
		),
	})

	-- Menambahkan snippet dinamis berdasarkan input
	for i = 10, 100, 10 do
		ls.add_snippets("all", {
			s("lorem" .. i, t(generate_lorem(i))),
		})
	end
end

return {
	setup = setup,
}
