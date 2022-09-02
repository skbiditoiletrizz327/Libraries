# Usage
- It's pretty easy to use
```lua
function import(library)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZSIOffical/Libraries/main/Libraries/"..library..".lua"))()
end
--[[ Importing it ]]--
import("Http")
--[[ Using Http ]]--
-- // decode and encode \\--
local table_to_encode = {"h",["idk"] = {"idk2"} }
local table_to_decode = Http:encode({Stuff=table_to_encode})
Http:decode({Stuff=table_to_decode})
-- // lo  -- loadstring(game:HttpGet())() shortend\\ --
Http:lo({Url=""})
-- // request and post \\--
local request = Http:request({Url=""})
--[[ 
● request.Url.Body - Body of the response,
● request.Url.Success - if the request was succesfull or not,
● request.Url.StatusCode - Statuscode of the request,
● request.Url.StatusMessage - The HTTP status code converted to string form,
● request.Url.Headers - headers of the request,
● request.Url.Cookies - the response cookies
]]--
Http:post({Url="",Headers={}})
-- rest is the same
```
