# Usage
- also pretty easy to use
- https://developer.roblox.com/en-us/api-reference/enum/KeyCode keys
```lua
function import(library)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZSIOffical/Libraries/main/Libraries/"..library..".lua"))()
end
-- {{Importing}} --
import("Input")
-- {{Usage}} --
-- the key an only be upper case not lower case!
--// same with input:inputBegan
input:inputEnded({Key="Q",Callback=function ()
    print("idk")
end})
```
