local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

local function setup(generate_lorem)
  -- Menambahkan snippet ke luasnip
  ls.add_snippets("all", {
    s(
      "lorem",
      f(function(args)
        -- Ambil input seperti `lorem25` atau gunakan default 50 kata
        local input = args[1][1] or "50"
        local count = tonumber(input:match("%d+")) or 50
        return generate_lorem(count)
      end, { 1 })
    ),
  })
end

return {
  setup = setup,
}
