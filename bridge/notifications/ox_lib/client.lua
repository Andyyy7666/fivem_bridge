local notifications = {}

--- Notification
---@param data NotificationData
function notifications.Notify(data)
    lib.notify(data)
end

return notifications