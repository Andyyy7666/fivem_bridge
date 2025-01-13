No_OxBridge = {}

function No_OxBridge:Notify(data)
    -- if not message or message == '' then return end
    -- type = type or 'success'
    -- duration = duration or 3000

    Fw_ESXBridge.ESX.ShowNotification(message, type, duration)
end