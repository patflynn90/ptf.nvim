return {
	"catppuccin/nvim", name = "catppuccin", priority = 1000, opts={
		flavour = "auto",
		background = {
			light = "latte",
			dark = "mocha",
		},
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
		},
		custom_highlights = function(colors)
			return {
				["@markup.list.checked.markdown"] = { fg = colors.sapphire },
				["@keyword.function"] = { style = { "italic" } },
			}
		end,
		integrations = {
			treesitter = true,
			mini = {
				enabled = true,
				indentscope_color = "",
			},
			which_key = true,
			fzf = true,
		},
		transparent_background = true,
		kitty = true,
	}
}
