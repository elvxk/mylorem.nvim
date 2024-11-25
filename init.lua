local M = {}

local function generate_lorem(word_count)
	local base_text = [[
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  ]]

	local words = {}
	for word in base_text:gmatch("%S+") do
		table.insert(words, word)
	end

	word_count = tonumber(word_count) or 50
	word_count = math.min(word_count, #words)

	return table.concat(words, " ", 1, word_count)
end

function M.setup()
	if pcall(require, "luasnip") then
		local ls = require("luasnip")
		local s = ls.snippet
		local f = ls.function_node
		local t = ls.text_node

		local snippets = {
			s(
				"lorem",
				f(function()
					return generate_lorem(50)
				end, {})
			),
		}

		for i = 10, 100, 10 do
			table.insert(snippets, s("lorem" .. i, t(generate_lorem(i))))
		end

		ls.add_snippets("all", snippets)
	else
		vim.notify("LuaSnip not found", vim.log.levels.ERROR)
	end
end

return M
