local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('unknown-buyitems:ItemCheck', function(result)
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
        if result then
            TriggerEvent("unknown-buyitems:OpenMenu")
        else
            QBCore.Functions.Notify('You are missing a '.. Config.ItemRequired, "error")
        end
    end, Config.ItemRequired)

end)


RegisterNetEvent('unknown-buyitems:OpenMenu', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Secret Shop",
           isMenuHeader = true,
       },

       {
           header = "Purchase Nitrous",
           txt = "",
           params = {
               event = "unknown-buyitems:Server:Nitro", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "Purchase Harness",
           txt = "",
           params = {
               event = "unknown-buyitems:Server:Harness",
               args = {
                   number = 1,
               }
           }
       },

       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 2,
               }
           }
       },
   })
   end)

   RegisterNetEvent('unknown-buyitems:Server:Nitro', function(data)
   TriggerServerEvent("unknown-buyitems:PayNitrous")
   end)

   RegisterNetEvent('unknown-buyitems:Server:Harness', function(data)
    TriggerServerEvent("unknown-buyitems:PayHarness")
    end)