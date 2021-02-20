mouse = {}
push = require 'push'
wwidth = 1600
wheight = 900
vwidth = 432
vheight = 243
 
function love.load()

    love.graphics.setDefaultFilter('nearest', 'nearest')

    
    love.window.setTitle('Escape')

    smallfont = love.graphics.newFont('font.ttf', 8)
    titlefont = love.graphics.newFont('Inlanders Demo.ttf', 24)
    scorefont = love.graphics.newFont('Lethal Slime.ttf', 32)

    push:setupScreen(vwidth, vheight, wwidth, wheight, {
        fullscreen = false,
        vsync = true, 
        resizable = false
    })
end
 
function love.update(dt)
    mouse.x, mouse.y = love.mouse.getPosition()  
end
 
function love.draw()
    love.graphics.setFont(scorefont)
    love.graphics.setColor(255, 255, 255)
    love.graphics.print("YOU CANT ESCAPE", mouse.x-250, mouse.y)
end



