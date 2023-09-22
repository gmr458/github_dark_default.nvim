local colors = {
	bg = "#0D1117",
	fg = "#e6edf3", -- actual line number, namaspaces

	-- backgrounds
	bg_01 = "#010409", -- terminal nvimtree
	bg_02 = "#0C1015", -- nvim tree line
	bg_03 = "#30363D", -- modes
	bg_04 = "#171B22", -- cursorline

	-- foregrounds
	fg_01 = "#6E7681", -- line numbers
	fg_02 = "#8B949E", -- comments
	fg_03 = "#C9D1D9", -- maybe types, self
	fg_04 = "#9EA4AA", -- unused variable
	fg_05 = "#6E7681", -- nvim tree gitignored

	-- red
	red_01 = "#ff7b72", -- keywords
	red_02 = "#CF222E", -- danger or closed
	red_03 = "#6B2A2B", -- gitsign removed
	red_04 = "#BA3E39", -- nvim tree deleted
	red_05 = "#F14C4C", -- error

	-- orange
	orange_01 = "#ffa657", -- classes namaspaces, enum member
	orange_02 = "#BC4C00", -- severe

	-- yellow
	yellow_01 = "#BF8700", -- attention
	yellow_02 = "#533D12", -- git sign changed
	yellow_03 = "#9E741C", -- nvim tree git modified
	yellow_04 = "#CCA700", -- warning

	-- green
	green_01 = "#2DA44E", -- success or open
	green_02 = "#1A4A29", -- git sign added
	green_03 = "#2F8C3E", -- git untracked and staged
	green_04 = "#7ee787", -- html tags

	-- cyan
	cyan_01 = "#a5d6ff", -- strings
	cyan_02 = "#79c0ff", -- constant and numbers, true false, properties, html properties

	-- blue
	blue_01 = "#0969DA", -- accent

	-- purple
	purple_01 = "#d2a8ff", -- functions methods
	purple_02 = "#8250DF", -- done
}

return colors
