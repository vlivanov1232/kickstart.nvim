-- Set leader key to space

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })
keymap.set('n', '<C-o>', '<C-o>zz', { noremap = true })
keymap.set('n', 'n', 'nzzzv', { noremap = true })
keymap.set('n', 'N', 'Nzzzv', { noremap = true })

--Open lazygit 
keymap.set('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })

--Telescope search with ripgrep args
keymap.set('n', '<leader>sa', ':lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>',
	  { desc = '[S]earch with [A]rgs' })

-- Open file explorer with Oil
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "[H]arpoon [A]dd file" })
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "[H]arpoon Menu" })
keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end, { desc = "[H]arpoon 1" })
keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end, { desc = "[H]arpoon 2" })
keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end, { desc = "[H]arpoon 3" })
keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end, { desc = "[H]arpoon 4" })
keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end, { desc = "[H]arpoon 5" })
keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end, { desc = "[H]arpoon 6" })
keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end, { desc = "[H]arpoon 7" })
keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end, { desc = "[H]arpoon 8" })
keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end, { desc = "[H]arpoon 9" })

-- Move line with ALT + JK
keymap.set("n", "<M-j>", ":m+1<CR>")
keymap.set("n", "<M-k>", ":m-2<CR>")
