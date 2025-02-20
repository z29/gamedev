local Birb = require "birb"
local player = {}

WINDOW_WIDTH = 450
WINDOW_HEIGHT = 700


function love.load()
    love.window.setMode(WINDOW_WIDTH,WINDOW_HEIGHT)
    player = Birb.new({x=WINDOW_WIDTH/4, y=WINDOW_HEIGHT/2})
    print(player)
end

function love.draw()
    player:draw()
end

function love.update(dt)
    player:update(dt)
end