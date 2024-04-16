push = require 'push'

WINDOW_HIEGHT=720
WINDOW_WIDTH=1280

VIRTUAL_WIDTH =432
VIRTUAL_HIEGHT=243

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HIEGHT, WINDOW_WIDTH, WINDOW_HIEGHT,{
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    push:apply('start')

    love.graphics.printf('Hello Pong!',0,VIRTUAL_HIEGHT / 2 - 6,VIRTUAL_WIDTH,'center'
)
    push.apply('end')
end