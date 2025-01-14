local notifications = {}
local QBCore = exports["qb-core"]:GetCoreObject()

function notifications:Notify(data)
    if data.type == "inform" then
        data.type = "info"
    end

    QBCore.Functions.Notify({
        text = data.description,
        caption = data.title
    }, data.type, data.duration)
end

return notifications