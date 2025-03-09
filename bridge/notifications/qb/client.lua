---@diagnostic disable: assign-type-mismatch
local notifications = {}
local QBCore = exports["qb-core"]:GetCoreObject()

--- Notification
---@param data NotificationData
function notifications.Notify(data)
    if data.type == "inform" then
        data.type = "info"
    end

    QBCore.Functions.Notify({
        text = data.description,
        caption = data.title
    }, data.type, data.duration)
end

return notifications