local notifications = {}

function notifications.Notify(data)
    data.header = data.header or data.title -- fivem_utils uses "header"
    data.title = nil

    --- Export for default utils notifications.
    exports.fivem_utils:notify(data)

    --- Export for fivem_utils notify bridge will cover: 'qb-core', 'es_extended', 'ox_lib', 'okokNotify', 'boii_ui', 'keystone'
    --- Use which ever.
    -- exports.fivem_utils:send_notification(data) 
end

return notifications
