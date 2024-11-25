local function setup(generate_lorem)
	local ultisnips_dir = vim.fn.stdpath("config") .. "/UltiSnips"
	vim.fn.mkdir(ultisnips_dir, "p")
	local file = io.open(ultisnips_dir .. "/lorem.snippets", "w")
	file:write([[
snippet lorem
]] .. generate_lorem(50) .. [[
endsnippet

snippet lorem25
]] .. generate_lorem(25) .. [[
endsnippet

snippet lorem100
]] .. generate_lorem(100) .. [[
endsnippet
]])
	file:close()
end

return {
	setup = setup,
}
