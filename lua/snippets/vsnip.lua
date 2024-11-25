local vsnip = require("vsnip")

local function setup(generate_lorem)
  vsnip.add_snippets("all", {
    trigger = "lorem",
    snippet = function(args)
      local word_count = tonumber(args[1]) or 50
      return generate_lorem(word_count)
    end,
  })
end

return {
  setup = setup,
}
