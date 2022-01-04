RegisterServerEvent("stifi:Ping")
AddEventHandler("stifi:Ping", function()
	local src = source
	TriggerClientEvent("stifi:Ping", src)
end)