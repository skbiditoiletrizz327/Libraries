local function import(Library)
    return loadstring(game:HttpGet("https://github.com/ZSIOffical/Libraries/Discord/Functions/"..Library..".lua"))()
end
local Delete = import("Delete")
Delete.Delete("webhook url")
