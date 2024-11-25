local function setup(generate_lorem)
	local vsnip_dir = vim.fn.stdpath("config") .. "/vsnip"
	vim.fn.mkdir(vsnip_dir, "p")
	local file = io.open(vsnip_dir .. "/all.json", "w")
	file:write(vim.fn.json_encode({
		lorem = { prefix = "lorem", body = generate_lorem(50) },
		lorem25 = { prefix = "lorem25", body = generate_lorem(25) },
		lorem100 = { prefix = "lorem100", body = generate_lorem(100) },
	}))
	file:close()
end

return {
	setup = setup,
}
