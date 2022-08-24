local HttpService = game:GetService("HttpService")
local http_request = (syn and syn.request) or (http and http.request) or http_request

function decode(stuff)
    HttpService:JSONDecode(stuff)
end
function encode(stuff)
    HttpService:JSONEncode(stuff)
end
function lo(url)
    loadstring(game:HttpGet(url))()
end
function request(url)
    http_request({
        Url = url,
        Method = "GET"
    })
end
function post(url,headers)
        http_request({
            Url = url,
            Headers = headers,
            Method = "POST"
        })
end
