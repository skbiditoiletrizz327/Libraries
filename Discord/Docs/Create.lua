local function import(Library)
    return loadstring(game:HttpGet("https://github.com/ZSIOffical/Libraries/Discord/Functions/"..Library..".lua"))()
end
local Create = import("Create")
Create.Create("Your discord token!",Channel Id)
