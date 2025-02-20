Birb = {}
Birb.__index = Birb

function Birb.new(position)
    local self = setmetatable({}, Birb)
    self.position = position
    self.velocity = {0, 0}
    self.rotation = 0
    return self
end

function Birb:draw()
    love.graphics.setColor(1,1,0)
    love.graphics.rectangle("fill", self.position.x, self.position.y, 30,30)
end

function Birb:__tostring()
    return string.format("Bird(%s, %s)", 
        tostring(self.position.x), 
        tostring(self.position.y)) 
end

function Birb:update(dt)
    
end

return Birb