-- Set leader key to space

vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-o>', '<C-o>zz', { noremap = true })
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sa', ':lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>',
	  { desc = '[S]earch with [A]rgs' })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })


