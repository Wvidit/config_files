function Colorit(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
	local dark_bg = "#101014"
	vim.api.nvim_set_hl(0, "Normal", {bg = "none", fg = "#e0e0e0"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none", fg = "#e0e0e0"})
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#888888" })
end

Colorit()
