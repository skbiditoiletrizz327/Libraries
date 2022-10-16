local WebHookTable = {}
local Request = (syn and syn.request) or (http and http.request) or http_request
WebHookTable.Delete = function(WebHook)
    if WebHook ~= "" then
        function TestWebhook()
            local k = Request({Url=WebHook})
            if k.StatusCode ~= 200 then
                print("Webhook is invalid")
                return false
            elseif k.StatusCode == 200 then
                return true
            end
        end
        if TestWebhook() then
            return Request({
                Url = WebHook,
                Method = "DELETE"
            })
        end
    end
end
return WebHookTable
