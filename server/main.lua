local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent("unknown-buyitems:PayNitrous")
AddEventHandler("unknown-buyitems:PayNitrous", function(Player)
        local src = source
	    local Player = QBCore.Functions.GetPlayer(src)

        if Config.PayType == "crypto" then

            if Player.Functions.RemoveMoney('crypto', Config.NosPrice) then
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nitrous'], "add")
                Player.Functions.AddItem("nitrous", 1)
            else
                TriggerClientEvent('QBCore:Notify', src, 'You dont have enough '..Config.PayType, 'error')
            end


            elseif Config.PayType == "cash" then
        
             if Player.Functions.RemoveMoney('cash', Config.NosPrice) then
                    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nitrous'], "add")
                    Player.Functions.AddItem("nitrous", 1)
             else
                TriggerClientEvent('QBCore:Notify', src, 'You dont have enough '..Config.PayType, 'error')
             end
        else
            if Player.Functions.PayType('bank', Config.NosPrice) then
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['nitrous'], "add")
                Player.Functions.AddItem("nitrous", 1)
            else
                TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money in your '..Config.PayType, 'error')
            end
        end
end)


RegisterServerEvent("unknown-buyitems:PayHarness")
AddEventHandler("unknown-buyitems:PayHarness", function(Player)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Config.PayType == "crypto" then

        if Player.Functions.RemoveMoney('crypto', Config.NosPrice) then
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['harness'], "add")
            Player.Functions.AddItem("harness", 1)
        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have enough '..Config.PayType, 'error')
        end


        elseif Config.PayType == "cash" then
    
         if Player.Functions.RemoveMoney('cash', Config.NosPrice) then
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['harness'], "add")
                Player.Functions.AddItem("harness", 1)
         else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have enough '..Config.PayType, 'error')
         end
    else
        if Player.Functions.PayType('bank', Config.NosPrice) then
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['harness'], "add")
            Player.Functions.AddItem("harness", 1)
        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money in your '..Config.PayType, 'error')
        end
    end
end)