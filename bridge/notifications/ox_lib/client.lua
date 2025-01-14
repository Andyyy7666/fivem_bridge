local notifications = {}

function notifications:Notify(data)
    exports["ox_lib"]:notify(data)
end

return notifications