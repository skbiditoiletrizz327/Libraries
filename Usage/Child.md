# Usage
- it's pretty easy to use
```lua
function import(library)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZSIOffical/Libraries/main/Libraries/"..library..".lua"))()
end
--{{Importing}}--
import("Child")
--{{Using}}--
--// childAdded
-- Note: Do not put game. before it just the path so e.g Workspace,ReplicatedStorage
childAdded("Workspace",function()
    print(Part) -- I added that if you want the specific thing e.g if Part.Name == "helllo" then print("hi") end please test if it works
end)
--// childRemoved
-- Note: Do not put game. before it just the path so e.g Workspace,ReplicatedStorage
childRemoved("Workspace",function()
    print(Part) -- I added that if you want the specific thing e.g if Part.Name == "helllo" then print("hi") end please test if it works
end)
--// Changed
-- Note: Do not put game. before it just the path so e.g Workspace,ReplicatedStorage
Changed("Workspace",function()
    print(Part) -- please check if it works
end)
```
