math.randomseed(os.time())
local WebHookTable = {}
local Request = (syn and syn.request) or (http and http.request) or http_request
local randomWait = math.random(1)
WebHookTable.Spamm = function(Webhook,Message)
    if Webhook ~= "" then
        while true do
            local Content = {
                ["content"] = Message
            },
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