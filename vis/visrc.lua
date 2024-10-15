-- load standard vis module, providing parts of the Lua API
require('vis')

vis.events.subscribe(vis.events.INIT, function()
end) 

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set rnu')
	vis:command('set tw 2')
	vis:command('set et on')
	vis:command('set ai on')
end)

local plug = require('vis-plug/init')

-- configure plugins in an array of tables with git urls and options 
local plugins = {
  { 'kupospelov/vis-ctags' },
	{ 'milhnl/vis-backspace' },
  { 'samlwood/vis-gruvbox', theme = true, file = 'gruvbox' },
}

-- require and optionally install plugins on init
plug.init(plugins, true)
