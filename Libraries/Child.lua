function childAdded(Path,Callback)
    game[Path].ChildAdded:connect(function (Part)
        pcall(Callback)
    end)
end
function childRemoved(Path,Callback)
    game[Path].ChildRemoved:connect(function (Part)
        pcall(Callback)
    end)
end
function Changed(Path,Callback)
    game[Path].Changed:connect(function (Part)
        pcall(Callback)
    end)
end
