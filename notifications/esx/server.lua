No_OxBridge = {}

---@param source number
---@param message string
---@param type? 'info' | 'success' | 'error'
---@param duration? number 
function No_OxBridge:Notify(source, message, type, duration)
    TriggerClientEvent('bixbi_tracker:Bridge:Notify', source, message, type, duration)
end
