# Usage
- It's pretty easy to use
```lua
function import(library)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZSIOffical/Libraries/main/Libraries/"..library..".lua"))()
end
--[[ Importing it ]]--
import("Http")
--[[ Using Http ]]--
-- Encode
local table_to_encode = {"hi","bye","idk"}
local table_to_decode = encode(table_to_encode) -- formats a lua table to json
-- Decode
decode(table_to_decode) -- decodes it into an lua table
-- lo
lo("raw link") -- it's just loadstring shortend
-- request
local url = request("url") -- seems like it's just like lo but you can add other stuff just look down 
--[[ 
● url.Body - Body of the response,
● url.Success - if the request was succesfull or not,
● url.StatusCode - Statuscode of the request,
● url.StatusMessage - The HTTP status code converted to string form,
● url.Headers - headers of the request,
● url.Cookies - the response cookies
]]--
-- post
headers =  {}
post("url",headers)
-- and the rest is the same
```
