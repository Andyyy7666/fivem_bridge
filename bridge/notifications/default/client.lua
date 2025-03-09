---@diagnostic disable: param-type-mismatch
local notifications = {}

--- Notification
---@param data NotificationData
function notifications.Notify(data)
    assert(data.description or data.title, "Invalid Arguments passed for Notify function. Either 'description' or 'title' must be provided.")
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(data.title or data.description)
    EndTextCommandThefeedPostTicker(0, 1)
end

return notifications