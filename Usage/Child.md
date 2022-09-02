# Usage
- it's pretty easy to use
```lua
function import(library)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZSIOffical/Libraries/main/Libraries/"..library..".lua"))()
end
--{{Importing}}--
import("Child")
--{{Using}}--
-- same thing with childRemoved and Changed (child:childRemoved,child:Changed)
child:childAdded({Path=ReplicatedStorage,Callback=function ()
    print(part.Name)
end})

```
