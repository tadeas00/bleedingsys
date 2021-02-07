Citizen.CreateThread(function()
while true do
Wait(0)
local player = GetPlayerPed(-1)
local Health = GetEntityHealth(player)
 
    if Health <= 180  then
        IsPedMale(PlayerPedId(true))
        lightbleeding(player)
 
        elseif Health > 181 then
            stopbleed(player)
        elseif Health < 142 then
            stopbleed(player)
    end
     

    if Health <= 140  then
        IsPedMale(PlayerPedId(true))
        fatalbleeding(player)
 
        elseif Health > 141 then
            bleedingoff(player)
        elseif Health > 143 then
            lightbleeding(player)
    end

    if Health <= 80  then
        IsPedMale(PlayerPedId(false))
        lightbleeding(player)
 
        elseif Health > 81 then
            stopbleed(player)
        elseif Health < 42 then
            stopbleed(player)
    end
     

    if Health <= 40  then
        IsPedMale(PlayerPedId(false))
        fatalbleeding(player)
 
        elseif Health > 41 then
            bleedingoff(player)
        elseif Health > 43 then
            lightbleeding(player)
    end
end
end)

