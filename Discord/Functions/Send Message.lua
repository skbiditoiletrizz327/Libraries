math.randomseed(os.time())
local WebHookTable = {}
local Request = request 
local randomWait = math.random(1)
WebHookTable.SendMessage = function(Type2, Webhook, Message)
    if Webhook ~= "" and Type2 ~= "" then
        local Content
        if Type2 == "Message" then
            Content = {
                ["content"] = Message
            }
        elseif Type2 == "Embed" then
            Content = {
                ["content"] = Message.Content,
                ["embeds"] = {
                    {
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
                    }
                }
            }
        end

        local response = Request({
            Url = Webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(Content)
        })

        if response.StatusCode == 204 then
            print("Success!")
        else
            print("Something didn't work")
        end
    end
end
return WebHookTable
