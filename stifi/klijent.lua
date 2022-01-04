ProsaoProvjeru = true

RegisterNetEvent("stifi:Ping")
AddEventHandler("stifi:Ping", function()
    ProsaoProvjeru = true
end)

exports("ping", function()
	return ProsaoProvjeru
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1000)
        ProsaoProvjeru = false

        while not ProsaoProvjeru do
            ProsaoProvjeru = false
            TriggerServerEvent("stifi:Ping")
            Wait(2000)
        end
    end
end)



--Primjer kako se koristi 
CreateThread(function()
    while true do 
        Wait(0)
        if IsControlJustReleased(1, 38) then
            if exports.stifi:ping() then
                print("konekcija stabilna")
            else
               print("konekcija izgubljena")
            end
        end
    end
end)