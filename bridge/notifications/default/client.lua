local notifications = {}

function notifications.Notify(data)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(info.title or info.description)
    EndTextCommandThefeedPostTicker(0, 1)
end

return notifications