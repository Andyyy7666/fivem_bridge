ConfigBridge = {
    ---Resources are checked sequentially. So if you want to prioritize a specific bridge then put it higher in the list.

    frameworks = {
        { resource = "ND_Core", folder = "nd" },
        { resource = "ox_core", folder = "ox" },
        { resource = "es_extended", folder = "esx" },
        { resource = "qbx-core", folder = "qbx" },
        { resource = "qb-core", folder = "qb" }
    },

    inventories = {
        { resource = "ox_inventory", folder = "ox" },
        { resource = "qb-inventory", folder = "qb" }
    },

    notifications = {
        { resource = "ox_lib", folder = "ox_lib" },
        { resource = "es_extended", folder = "esx" },
        { resource = "qb-core", folder = "qb" }
    },

    targets = {
        { resource = "ox_target", folder = "ox" },
        { resource = "qb-target", folder = "qb" }
    } 
}