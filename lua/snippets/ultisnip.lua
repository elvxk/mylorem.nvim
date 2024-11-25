local function setup(generate_lorem)
  vim.g.UltiSnipsSnippetDirectories = { "~/.config/nvim/snippets" }

  vim.cmd([[
    snippet lorem "Generate Lorem Ipsum"
      python <<EOF
import random
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
words = lorem.split(" ")
word_count = int(snippet.split()[1]) if len(snippet.split()) > 1 else 50
return " ".join(words[:word_count])
EOF
  ]])
end

return {
  setup = setup,
}
