return function()
	vim.keymap.set("i", "<C-Right>", "copilot#Accept()", { expr = true })
end
