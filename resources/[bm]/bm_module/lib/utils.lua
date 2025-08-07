function sendToDiscord(weebhook, message)
    -- print(weebhook, json.encode(message))
    if weebhook then
	    PerformHttpRequest(weebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = message}), { ['Content-Type'] = 'application/json' })
    end
end


-- function sendWebhookMessage(webhook, message)
--     if webhook then
--         PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
--     end
-- end