local r1 = false
local r2 = false
local r3 = false
local r4 = false
local r5 = false

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    TriggerServerEvent('astro-heist:lockdoors')
    r1 = false
    r2 = false
    r3 = false
    r4 = false
    r5 = false
end)

function doors()
local door = GetClosestObjectOfType(-628.4071, -230.4040, 38.0570, 4.0, 'v_ilev_j2_door')
BreakDoorWithThermalCharge(door)
TriggerServerEvent('astro-heist:opendoor')
guard()
trolly()
end

function guard()
local guard = CreateGuard("mp_m_securoguard_01", vector3(-618.8303, -226.0399, 38.0570), 120.8864, "hard")
GiveWeaponToPed(guard, `WEAPON_HEAVYPISTOL`, 255, false, true)
end

function trolly()
CreateTrolly("money", vector3(-629.5137, -228.8671, 38.0570), function()
TriggerServerEvent('astro-heist:trollygift')
end)
end

RegisterNetEvent("astro-heist:glass1", function()
    if r1 == false then
    if IsPedArmed(PlayerPedId(), 4) then
    r1 = true
    TaskPlayAnim(PlayerPedId(), 'missheist_jewel', 'smash_case', 1.0, -1.0,-1,1,0,0, 0,0)
    PlaySoundFromCoord(-1, "Glass_Smash", GetEntityCoords(PlayerPedId()), 0, 0, 0)
    Citizen.Wait(5800)
    ClearPedTasksImmediately(PlayerPedId())
    TriggerServerEvent('astro-heist:items')
    else exports['Astro-NotifySystem']:Notify('error', 'Nie masz czym tego rozbic!') end else exports['Astro-NotifySystem']:Notify('error', 'Nic tu nie ma!') end end)

    RegisterNetEvent("astro-heist:glass2", function()
        if r2 == false then
        if IsPedArmed(PlayerPedId(), 4) then
        r2 = true
        TaskPlayAnim(PlayerPedId(), 'missheist_jewel', 'smash_case', 1.0, -1.0,-1,1,0,0, 0,0)
        PlaySoundFromCoord(-1, "Glass_Smash", GetEntityCoords(PlayerPedId()), 0, 0, 0)
        Citizen.Wait(5800)
        ClearPedTasksImmediately(PlayerPedId())
        TriggerServerEvent('astro-heist:items')
        else exports['Astro-NotifySystem']:Notify('error', 'Nie masz czym tego rozbic!') end else exports['Astro-NotifySystem']:Notify('error', 'Nic tu nie ma!') end end)

        RegisterNetEvent("astro-heist:glass3", function()
            if r3 == false then
            if IsPedArmed(PlayerPedId(), 4) then
            r3 = true
            TaskPlayAnim(PlayerPedId(), 'missheist_jewel', 'smash_case', 1.0, -1.0,-1,1,0,0, 0,0)
            PlaySoundFromCoord(-1, "Glass_Smash", GetEntityCoords(PlayerPedId()), 0, 0, 0)
            Citizen.Wait(5800)
            ClearPedTasksImmediately(PlayerPedId())
            TriggerServerEvent('astro-heist:items')
            else exports['Astro-NotifySystem']:Notify('error', 'Nie masz czym tego rozbic!') end else exports['Astro-NotifySystem']:Notify('error', 'Nic tu nie ma!') end end)

            RegisterNetEvent("astro-heist:glass4", function()
                if r4 == false then
                if IsPedArmed(PlayerPedId(), 4) then
                r4 = true
                TaskPlayAnim(PlayerPedId(), 'missheist_jewel', 'smash_case', 1.0, -1.0,-1,1,0,0, 0,0)
                PlaySoundFromCoord(-1, "Glass_Smash", GetEntityCoords(PlayerPedId()), 0, 0, 0)
                Citizen.Wait(5800)
                ClearPedTasksImmediately(PlayerPedId())
                TriggerServerEvent('astro-heist:items')
                else exports['Astro-NotifySystem']:Notify('error', 'Nie masz czym tego rozbic!') end else exports['Astro-NotifySystem']:Notify('error', 'Nic tu nie ma!') end end)

                RegisterNetEvent("astro-heist:glass5", function()
                    if r5 == false then
                    if IsPedArmed(PlayerPedId(), 4) then
                    r5 = true
                    TaskPlayAnim(PlayerPedId(), 'missheist_jewel', 'smash_case', 1.0, -1.0,-1,1,0,0, 0,0)
                    PlaySoundFromCoord(-1, "Glass_Smash", GetEntityCoords(PlayerPedId()), 0, 0, 0)
                    Citizen.Wait(5800)
                    ClearPedTasksImmediately(PlayerPedId())
                    TriggerServerEvent('astro-heist:items')
                    else exports['Astro-NotifySystem']:Notify('error', 'Nie masz czym tego rozbic!') end else exports['Astro-NotifySystem']:Notify('error', 'Nic tu nie ma!') end end)





RegisterNetEvent("astro-heist:hackdoors", function()
exports['ps-ui']:VarHack(function(success)
    if success then
        TriggerServerEvent('astro-heist:opendoors')
        TriggerServerEvent('astro-heist:deleteitem', 'laptop')
    else
        exports['Astro-NotifySystem']:Notify('error', 'Sproboj ponownie!')
    end
 end, 5, 5) end)

 RegisterNetEvent("astro-heist:hackdoor", function()
    exports['ps-ui']:Thermite(function(success)
        if success then
            TriggerServerEvent('astro-heist:deleteitem', 'ulepszonylaptop')
            doors()
        else
            exports['Astro-NotifySystem']:Notify('error', 'Sproboj ponownie!')
        end
     end, 10, 5, 3)
    end)
