local UIS = game:GetService("UserInputService")
local input = {}

function input:inputBegan(info)
    info = info  or {}
    local key = info.Key
    local callback = info.Callback
    UIS.InputBegan:Connect(function(obj)
        if obj.KeyCode == Enum.KeyCode[key] then 
            pcall(callback) 
        end 
    end)
end
function input:inputEnded(info)
    info = info  or {}
    local key = info.Key
    local callback = info.Callback
    UIS.InputEnded:Connect(function (obj)
        if obj.KeyCode == Enum.KeyCode[key] then 
            pcall(callback) 
        end 
    end)
end
