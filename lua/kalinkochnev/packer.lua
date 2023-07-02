-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 'rose-pine/neovim', as = 'rose-pine' })
    vim.cmd('colorscheme rose-pine')

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate '})
    -- use('nvim-treesitter/playground') -- Allows you to see the AST of the file you're in with if making plugins
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-surround')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    };
}
-- NerdTree
use('preservim/nerdtree')

-- Aesthetic status line nvim
use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

-- Icons
use('ryanoasis/vim-devicons')

-- Formatter support
use('mhartington/formatter.nvim')

-- Python virtual envs
-- use {
--     "linux-cultist/venv-selector.nvim",
--     requires  = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
--     config = true,
--     keys = {
--         "<leader>vs", "<cmd>:VenvSelect<cr>",
--         -- key mapping for directly retrieve from cache. You may set autocmd if you prefer the no hand approach
--         "<leader>vs", "<cmd>:VenvSelectCached<cr>"
--     }
-- }

-- Brackets/Parenthesis stuff
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- Code folding
end)
