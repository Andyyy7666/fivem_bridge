RegisterNetEvent('bixbi_tracker:Bridge:Notify')
AddEventHandler('bixbi_tracker:Bridge:Notify', function(message, type, duration)
	Bridge.N:Notify(message, type, duration)
end)