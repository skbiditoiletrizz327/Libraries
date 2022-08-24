# Usage
- also pretty easy to use
```lua
function import(library)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZSIOffical/Libraries/main/Libraries/"..library..".lua"))()
end
-- {{Importing}} --
import("Input")
-- {{Usage}} --
--// inputBegan
-- the key an only be upper case not lower case!
inputBegan("Q",function()
    print("hi")
end)
--// inputEnded
-- the key an only be upper case not lower case!
inputEnded("Q",function()
    print("Bye")
end)
```
