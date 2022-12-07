RegisterNetEvent("astro-heist:trollygift", function() AddItem(source, "money", 200) end)

RegisterNetEvent("astro-heist:opendoor", function()
    local vangelico2 = exports.ox_doorlock:getDoor(93)
    local vangelico2 = exports.ox_doorlock:getDoorFromName('vangelico2')
    TriggerEvent('ox_doorlock:setState', vangelico2.id, 0)
end)

RegisterNetEvent("astro-heist:opendoors", function()
    local count, workers = GetDataForJob("police")
    if count > 2 then
    local vangelico = exports.ox_doorlock:getDoor(91)
    local vangelico = exports.ox_doorlock:getDoorFromName('vangelico')
    TriggerEvent('ox_doorlock:setState', vangelico.id, 0)
           else
            TriggerClientEvent('Astro-NotifySystem:Notify', source, 'error', 'Drzwi sie nie otworzyly, poniewaz nie ma lspd!')
            end
end)

RegisterNetEvent("astro-heist:lockdoors", function()
    local vangelico = exports.ox_doorlock:getDoor(91)
    local vangelico = exports.ox_doorlock:getDoorFromName('vangelico')
    local vangelico2 = exports.ox_doorlock:getDoor(93)
    local vangelico2 = exports.ox_doorlock:getDoorFromName('vangelico2')
    TriggerEvent('ox_doorlock:setState', vangelico.id, 1)
    TriggerEvent('ox_doorlock:setState', vangelico2.id, 1)
end)

RegisterNetEvent("astro-heist:deleteitem", function(item)
    RemoveItem(source, item, 1)
end)

RegisterNetEvent("astro-heist:items", function()
    AddItem(source, "bizuterua", 1)
end)
