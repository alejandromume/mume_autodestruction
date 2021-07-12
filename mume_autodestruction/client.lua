ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("autodestroy", function(source, args)
    local jugador = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(GetPlayersLastVehicle(jugador)))
    
    for i=5,1, -1 do
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Autodestruction", i .. " seconds"}
          })
          Citizen.Wait(1000)
    end

    AddExplosion(x, y, z, 40, 2.0, true, false, true)
end)
