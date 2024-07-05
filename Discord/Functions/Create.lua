local WebHookTable = {}
local Request = (syn and syn.request) or (http and http.request) or http_request
WebHookTable.Create = function(Token,Id)
    function CheckUser()
        local k = Request({
            Url = "https://discord.com/app",
            Headers = {["Authorization"] = Token}})
        if k.StatusCode ~= 200 then
            print("Invalid token or token is locked")
            return false
        elseif k.StatusCode == 200 then
            return true
        end
    end
    if CheckUser() then
        local Channel = "https://discord.com/api/v9/channels/"..Id.."/webhooks"
        local Answer = Request({
            Url = Channel,
            Headers = {
                ["Authorization"] = Token
            },
            Method = "POST"
        })
        if Answer.StatusCode ~= 200 then
            return print("Something went wrong")
        else
            return print("Successfully created an webhook but I'm unable to print the response because of the lack of features!")
        end
    end
end
return WebHookTable
