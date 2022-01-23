# Unknown-BuyItems
 
# This is a script I've had for a while, Just added a few configurable options.


# Requires QB-Target

Change the Model and coords to move the ped

["SecretShop"] = {
        model = 'a_c_rhesus',
        coords = vector4(295.08, -1116.25, 29.44, 29.82),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "UNKNOWN-SECRETSHOP:ItemCheck",
                    icon = 'fas fa-store',
                    label = 'Purchase goods',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
