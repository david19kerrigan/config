require('vis')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('map normal ZX :q!<Enter>')
	vis:command('set theme mocha')
    vis:map(vis.modes.INSERT, 'jj', '<Escape>')
end) 

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set rnu')
	vis:command('set et on')
	vis:command('set ai on')
	vis:command('set tw 4')
end)

local plug = require('vis-plug/init')

local plugins = {
  { 'kupospelov/vis-ctags' },
}

plug.init(plugins, true)
