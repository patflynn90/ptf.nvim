return {
	"catppuccin/nvim", name = "catppuccin", priority = 1000, opts={
		flavour = "auto",
		background = {
			light = "latte",
			dark = "mocha",
		},
		styles = {
			conditionals = { "italic" },
		},
		highlight_overrides = {
			latte = function(latte)
				return {
					["@comment"] = { fg = latte.surface1, style = { "italic" } },
				}
			end,
		},
		custom_highlights = function(colors)
			return {
				["@markup.list.checked.markdown"] = { fg = colors.sapphire },
				Keyword = { style = { "italic" } },
				["@keyword.function"] = { style = { "italic" } },
				["@keyword.return"] = { style = { "italic" } },
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
