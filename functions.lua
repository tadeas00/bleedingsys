function lightbleeding(ped)
    SetEntityHealth(ped,GetEntityHealth(ped)-1)
    StartScreenEffect('PPOrange', 0, true)
    SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
    Wait(3000)
end

function stopbleed(ped)
    effect = false
    StopScreenEffect('PPOrange')
    SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
end


function fatalbleeding(ped)
    SetEntityHealth(ped,GetEntityHealth(ped)-2)
    StartScreenEffect('Rampage', 0, true)
    ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 1.0)
    SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
    Wait(5000)
end

function bleedingoff(ped)
    effect = false
    StopScreenEffect('Rampage')
    SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
end
 
local effect = false



RegisterCommand('light', function()
    SetEntityHealth(GetPlayerPed(-1), 180)
end)


RegisterCommand('fatal', function()
    SetEntityHealth(GetPlayerPed(-1), 140)
end)