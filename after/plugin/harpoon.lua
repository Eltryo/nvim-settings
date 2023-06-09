local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local tmux = require("harpoon.tmux")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-n>", function() ui.nav_next() end)
vim.keymap.set("n", "<C-p>", function() ui.nav_prev() end)

vim.keymap.set("n", "<C-t>", function() tmux.gotoTerminal(1) end)
