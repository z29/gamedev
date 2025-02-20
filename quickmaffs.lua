local quickmaffs = {}

function quickmaffs.absolute(x)
    if x > 0 then
        return x
    else 
        return x * -1
    end
end

function quickmaffs.isNegative(x)
    return x < 0
end

function quickmaffs.genOne()
    local temp = love.math.random(1,100)
    if temp < 50 then
        return 1
    else
        return -1
    end
end

function quickmaffs.genRandomFraction()
    return love.math.random(1,30) / 100
end

function quickmaffs.genRandomInitialSpeed()
    return 100 * quickmaffs.genOne()
end

function quickmaffs.genRandomMod()
    return 1 + quickmaffs.genRandomFraction()
end

function quickmaffs.genRandomRGB()
    return love.math.random(0,255) / 255
end

function quickmaffs.genRandomColor()
    local R = quickmaffs.genRandomRGB()
    local G = quickmaffs.genRandomRGB()
    local B = quickmaffs.genRandomRGB()
    return {R, G, B}
end

return quickmaffs