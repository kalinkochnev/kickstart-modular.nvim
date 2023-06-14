local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- fuzzy search
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- find files in repository
vim.keymap.set('n', '<leader>ps', function() -- project search
	builtin.grep_string({search= vim.fn.input("Grep >") });
end)

