No_OxBridge = {}

function No_OxBridge:Notify(message, type, duration)
    local ESX = Fw_ESXBridge:ESX()
    if not message or message == '' then return end
    type = type or 'success'
    duration = duration or 3000

    ESX.ShowNotification(message, type, duration)
end