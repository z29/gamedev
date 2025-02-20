require("quickmaffs")
local Colors = {
    BLACK   = {0,0,0,1},
    BLUE    = {0,0,1,1},
    GREEN   = {0,1,0,1},
    CYAN    = {0,1,1,1},
    RED     = {1,0,0,1},
    MAGENTA = {1,0,1,1},
    YELLOW  = {1,1,0,1},
    WHITE   = {1,1,1,1}
}

function Colors.genRandomColor(alpha)
    local R = quickmaffs.genRandomRGB()
    local G = quickmaffs.genRandomRGB()
    local B = quickmaffs.genRandomRGB()
    local A = alpha or 1
    return {R, G, B, A}
end

function Colors.genRandomColorAndOpacity()
    local R = quickmaffs.genRandomRGB()
    local G = quickmaffs.genRandomRGB()
    local B = quickmaffs.genRandomRGB()
    local A = quickmaffs.genRandomRGB()
    return {R, G, B, A}
end

return Colors