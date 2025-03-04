Config = {
    ---Resources are checked sequentially. So if you want to prioritise a specific bridge then put it higher in the list.
    ---For e.g. if you have ["es_extended"] and ["ox_lib"] as notification bridges, in that order - then it will use es_extended.

    ---Note: Bridges have case sensitive resource names. (Left Side).
    ---Use the right side for the bridge folders.

    frameworks = {
        ["ND_Core"] = "nd",
        ["ox_core"] = "ox",
        ["es_extended"] = "esx",
        ["qb-core"] = "qb",
        ["qbx-core"] = "qbx"
    },

    inventories = {
        ["ox_inventory"] = "ox"
        ["qb-inventory"] = "qb",
    },

    notifications = {
        ["ox_lib"] = "ox_lib",
        ["es_extended"] = "esx",
        ["qb-core"] = "qb"
    },

    targets = {
        ["ox_target"] = "ox",
        ["qb-target"] = "qb"
    }
}