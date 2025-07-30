require('mini.snippets').setup({})
require('mini.completion').setup({})
require("mini.surround").setup({})
local map_multistep = require("mini.keymap").map_multistep
map_multistep("i", "<C-o>", {"pmenu_next"})
map_multistep("i", "<C-p>", {"pmenu_prev"})
map_multistep("i", "<C-y>", {"pmenu_accept"})
