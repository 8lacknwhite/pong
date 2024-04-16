WINDOW_HIEGHT=720
WINDOW_WIDTH=1280

function love.load()
    love.window.setMode(WINDOW_WIDTH,WINDOW_HIEGHT,{
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

function love.draw()
    love.graphics.printf(
        'Hello Pong!',
        0,
        WINDOW_HIEGHT / 2 - 6,
        WINDOW_WIDTH,'center'
    )
end