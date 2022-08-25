local UIS = game:GetService("UserInputService")


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
