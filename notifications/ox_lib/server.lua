No_OxBridge = {}

function No_OxBridge:Notify(source, data)
    TriggerClientEvent('Bridge:N:Notify', source, data)
end