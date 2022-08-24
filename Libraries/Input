local UIS = game:GetService("UserInputService")
local keys = {
    ["A"] = 0x41,
    ["B"] = 0x42,
    ["C"] = 0x43,
    ["D"] = 0x44,
    ["E"] = 0x45,
    ["F"] = 0x46,
    ["G"] = 0x47,
    ["H"] = 0x48,
    ["I"] = 0x49,
    ["J"] = 0x4A,
    ["K"] = 0x4A,
    ["L"] = 0x4A,
    ["M"] = 0x4A,
    ["N"] = 0x4A,
    ["O"] = 0x4F,
    ["P"] = 0x50,
    ["Q"] = 0x51,
    ["R"] = 0x52,
    ["S"] = 0x53,
    ["T"] = 0x54,
    ["U"] = 0x55,
    ["V"] = 0x56,
    ["W"] = 0x57,
    ["X"] = 0x58,
    ["Y"] = 0x59,
    ["Z"] = 0x5A,
    ["Left mouse button"] = 0x01,
    ["Right mouse button"] = 0x02,
    ["F11"] = 0x7A
}

function inputBegan(key,callback)
    UIS.InputBegan:Connect(function(obj)
        if obj.KeyCode == Enum.KeyCode[key] then 
            pcall(callback) 
        end 
    end)
end
function inputEnded(key,callback)
    UIS.InputEnded:Connect(function (obj)
        if obj.KeyCode == Enum.KeyCode[key] then 
            pcall(callback) 
        end 
    end)
end
function BetterKeyPress(key)
    keypress(key) 
    wait(0.3)
    keyrelease(key)
end
