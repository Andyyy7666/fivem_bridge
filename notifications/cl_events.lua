RegisterNetEvent('Bridge:N:Notify')
AddEventHandler('Bridge:N:Notify', function(data)
	Bridge.N:Notify(data)
end)