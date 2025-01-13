No_OxBridge = {}

---@param source number
function No_OxBridge:Notify(source, data)
    TriggerClientEvent('Bridge:N:Notify', source, data)
end
