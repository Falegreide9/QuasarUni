local notify = require("modules.notify")
local SPEED_LIMIT = 80.0

function getSpeedInKmh(entity)
    local speed = GetEntitySpeed(entity)
    return speed * 3.6
end

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped,false) then
            local vehicle = GetVehiclePedIsIn(ped,false)
            local speed = getSpeedInKmh(vehicle)
            if speed > SPEED_LIMIT then
                notify.simple("You Are Speeding")
            end
        end
    end
end)