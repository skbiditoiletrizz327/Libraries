math.randomseed(os.time())
local WebHookTable = {}
local Request = (syn and syn.request) or (http and http.request) or http_request or request
local randomWait = math.random(1)
WebHookTable.Spamm = function(Type2,Webhook,Message)
    if Webhook ~= "" and Type2 ~= "" then
        while true do
            local Content;
            if Type2 == "Message"
                Content = {
                    ["content"] = Message
                }
            elseif Type2 == "Embed" then
                Content = {
                    ["content"] = Message.Content 
                    ["embeds"] = {{
                        ["color"] = Message.Color,
                        ["title"] = Message.Title,
                        ["description"] = Message.Description,
                        ["footer"] = {
                            ["text"] = Message.Footer 
                        },
                        ["author"] = {
                            ["name"] = Message.Author,
                            ["icon_url"] = Message.Icon
                        }
                    }}
                }
            end
            local respone = Request({
                Url = Webhook,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game:GetService("HttpService"):JSONEncode(Content) 
            })
            if respone.StatusCode == 204 then
                wait()
            elseif respone.StatusCode ~= 204 then
                print("Currently, the API rate is likely limited, which is delaying the request by "..randomWait.." seconds")
                wait(randomWait)
            end
        end
    end
end
return WebHookTable
