local notifications = {}
local ESX = exports["es_extended"]:getSharedObject()

function notifications.Notify(data)
    if data.type == "inform" then
        data.type = "info"
    end

    ESX.ShowNotification(data.description or data.title, data.type, data.duration)
end

return notifications