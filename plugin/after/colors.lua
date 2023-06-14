-- A function that is called so that vim is always using the proper color scheme
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- Add some opacity
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- Vim itself
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- floating windows
end
ColorMyPencils()
