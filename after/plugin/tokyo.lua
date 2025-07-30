-- lua/tokyo.lua

vim.g.tokyonight_style = "store"           -- Options: storm, night, moon, day
vim.g.tokyonight_transparent = true        -- Enable transparency
vim.g.tokyonight_terminal_colors = true    -- Use Tokyonight colors in terminal

-- Optional tweaks
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "terminal", "packer" }

-- Load the colorscheme
vim.cmd("colorscheme tokyonight")

