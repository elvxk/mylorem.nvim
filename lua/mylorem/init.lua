local M = {}

-- Fungsi untuk menghasilkan teks lorem ipsum
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

function M.setup(opts)
	opts = opts or {}

	-- LuaSnip Integration
	if opts.luasnip or opts.default then
		require("mylorem.snippets.luasnip").setup(generate_lorem)
	end

	-- Ultisnips Integration
	if opts.ultisnips then
		require("mylorem.snippets.ultisnips").setup(generate_lorem)
	end

	-- VSnip Integration
	if opts.vsnip then
		require("mylorem.snippets.vsnip").setup(generate_lorem)
	end
end

return M
