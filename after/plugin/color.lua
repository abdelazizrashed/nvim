function Color(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})	
	-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})	
end

require("catppuccin").setup({
    -- flavour = "auto", -- latte, frappe, macchiato, mocha
    -- background = { -- :h background
    --     light = "latte",
    --     dark = "mocha",
    -- },
    transparent_background = true, -- disables setting the background color.
})

Color()
