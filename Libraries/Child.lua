local child = {}
function child:childAdded(info)
    info = info or {}
    local Path = info.Path
    local Callback = info.Callback
    game[Path].ChildAdded:connect(function (Part)
        pcall(Callback)
    end)
end
function child:childRemoved(info)
    info = info or {}
    local Path = info.Path
    local Callback = info.Callback
    game[Path].ChildRemoved:connect(function (Part)
        pcall(Callback)
    end)
end
function child:Changed(info)
    local Path = info.Path
    local Callback = info.Callback
    game[Path].Changed:connect(function (Part)
        pcall(Callback)
    end)
end
