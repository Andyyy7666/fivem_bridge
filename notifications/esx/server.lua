No_OxBridge = {}

function No_OxBridge:Notify(source, message, type, duration)
    TriggerClientEvent('bixbi_tracker:Bridge:Notify', source, message, type, duration)
end