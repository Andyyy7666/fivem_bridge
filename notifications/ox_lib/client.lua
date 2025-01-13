No_OxBridge = {}

function No_OxBridge:Notify(message, type, duration)
    if not message or message == '' then return end
    type = type or 'success'
    duration = duration or 3000

    local pos = 'top' -- 'top', 'top-right', 'top-left', 'bottom', 'bottom-right', 'bottom-left', 'center-right' or 'center-left'

    lib.notify({
        title = Config.resourceName,
        description = message,
        type = type,
        duration = duration,
        position = pos
    })
end