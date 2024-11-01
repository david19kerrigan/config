-- Catppuccin color scheme by Pavel Pertsev (https://github.com/morhetz)
-- For the Vis text editor by Marc Tanner (https://github.com/martanne)

local gruvbox = {
	dark0	= '#1e1e2e',
	dark1	= '#313244',
	dark2	= '#45475a',
	dark3	= '#585b70',
	dark4	= '#6c7086',
	light0	= '#cdd6f4',
	light1	= '#bac2de',
	light2	= '#a6adc8',
	light3	= '#9399b2',
	light4	= '#7f849c',
	gray	= '#6c7086',
	red0	= '#f38ba8',
	green0	= '#a6e3a1',
	yellow0	= '#f9e2af',
	blue0	= '#89b4fa',
	purple0	= '#cba6f7',
	aqua0	= '#b4befe',
	orange0	= '#eba0ac',
}

local colors = {}

colors.bg0 = gruvbox.dark0
colors.bg1	= gruvbox.dark1
colors.bg2	= gruvbox.dark2
colors.bg3	= gruvbox.dark3
colors.bg4	= gruvbox.dark4
colors.fg0	= gruvbox.light0
colors.fg1	= gruvbox.light1
colors.fg2	= gruvbox.light2
colors.fg3	= gruvbox.light3
colors.fg4	= gruvbox.light4
colors.gray	= gruvbox.gray
colors.red	= gruvbox.red0
colors.green	= gruvbox.green0
colors.yellow	= gruvbox.yellow0
colors.blue	= gruvbox.blue0
colors.purple	= gruvbox.purple0
colors.aqua	= gruvbox.aqua0
colors.orange	= gruvbox.orange0

-- To use your terminal's default background (e.g. for transparency), set the value below to 'back:default,fore:'..colors.fg1
vis.lexers.STYLE_DEFAULT		= 'back:'..colors.bg0..',fore:'..colors.blue
vis.lexers.STYLE_NOTHING		= ''
vis.lexers.STYLE_CLASS			= 'fore:'..colors.yellow
vis.lexers.STYLE_COMMENT		= 'fore:'..colors.gray..',italics'
vis.lexers.STYLE_CONSTANT		= 'fore:'..colors.purple
vis.lexers.STYLE_DEFINITION		= 'fore:'..colors.yellow
vis.lexers.STYLE_ERROR			= 'fore:'..colors.red..',back:'..colors.bg0..',reverse'
vis.lexers.STYLE_FUNCTION		= 'fore:'..colors.green..',bold'
vis.lexers.STYLE_KEYWORD		= 'fore:'..colors.red
vis.lexers.STYLE_LABEL			= 'fore:'..colors.red
vis.lexers.STYLE_NUMBER			= 'fore:'..colors.purple
vis.lexers.STYLE_OPERATOR		= vis.lexers.STYLE_DEFAULT
vis.lexers.STYLE_REGEX			= 'fore:'..colors.aqua
vis.lexers.STYLE_STRING			= 'fore:'..colors.green
vis.lexers.STYLE_PREPROCESSOR		= 'fore:'..colors.aqua
vis.lexers.STYLE_TAG			= 'fore:'..colors.blue
vis.lexers.STYLE_TYPE			= 'fore:'..colors.yellow
vis.lexers.STYLE_VARIABLE		= 'fore:'..colors.blue
vis.lexers.STYLE_WHITESPACE		= ''
vis.lexers.STYLE_EMBEDDED		= 'fore:'..colors.orange
vis.lexers.STYLE_IDENTIFIER		= 'fore:'..colors.fg0

vis.lexers.STYLE_LINENUMBER		= 'fore:'..colors.bg4
vis.lexers.STYLE_LINENUMBER_CURSOR	= 'fore:'..colors.yellow..',back:'..colors.bg1
vis.lexers.STYLE_CURSOR			= 'back:'..colors.fg0..',fore:'..colors.bg0
vis.lexers.STYLE_CURSOR_PRIMARY		= vis.lexers.STYLE_CURSOR..',fore:'..colors.yellow
vis.lexers.STYLE_CURSOR_LINE		= 'back:'..colors.bg1
vis.lexers.STYLE_COLOR_COLUMN		= 'reverse'
vis.lexers.STYLE_SELECTION		= 'back:'..colors.bg2..',fore:default'
vis.lexers.STYLE_STATUS			= 'fore:'..colors.bg1..',back:'..colors.fg4..',reverse'
vis.lexers.STYLE_STATUS_FOCUSED		= 'fore:'..colors.bg2..',back:'..colors.fg1..',reverse'
vis.lexers.STYLE_SEPARATOR		= 'fore:'..colors.bg3
vis.lexers.STYLE_INFO			= 'fore:'..colors.yellow..',bold'
vis.lexers.STYLE_EOF			= vis.lexers.STYLE_LINENUMBER
