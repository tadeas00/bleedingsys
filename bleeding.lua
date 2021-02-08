Citizen.CreateThread(function()
while true do
Wait(0)
local player = GetPlayerPed(-1)
local Health = GetEntityHealth(player)
local sex = GetEntityMaxHealth(player)
     
    if sex == 200 and Health < 180 or sex == 175 and Health < 155 then
        lightbleeding(player)
     
        elseif sex == 200 and Health > 181 or sex == 175 and Health > 156  then
            stopbleed(player)
        elseif sex == 200 and Health < 142 or sex == 175 and Health < 132 then
            stopbleed()
    end
         
    
    if sex == 200 and Health < 140 or sex == 175 and Health < 130 then
        fatalbleeding(player)
     
        elseif sex == 200 and Health > 141 or sex == 175 and Health > 131 then
            bleedingoff(player)
        elseif sex == 200 and Health > 143 or sex == 175 and Health > 133 then
            lightbleeding(player)
    end
end
end)
