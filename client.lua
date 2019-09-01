local PlayerData = {}
ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end
    PlayerData = ESX.GetPlayerData()
end)

local removeTop = {['tshirt_1'] = 57}
local removeHat = {['helmet_1'] = -1}
local removeTorso = {['torso_1'] = 53}
local removeEars = {['ears_1'] = -1}

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(10000)
		TriggerEvent('skinchanger:getSkin', function(skin)
            if PlayerData.job ~= nil and PlayerData.job.name ~= 'police' then
            	if skin.tshirt_1 == 129 then
					TriggerEvent('skinchanger:loadClothes', skin, removeTop)
                    ESX.ShowNotification("Server: You may not wear police equipment!")
                end
            	if skin.tshirt_1 == 122 then
					TriggerEvent('skinchanger:loadClothes', skin, removeTop)
                    ESX.ShowNotification("Server: You may not wear police equipment!")
                end
            	if skin.tshirt_1 == 58 then
					TriggerEvent('skinchanger:loadClothes', skin, removeTop)
                    ESX.ShowNotification("Server: You may not wear police equipment!")
                end
                if skin.helmet_1 == 46 then
					TriggerEvent('skinchanger:loadClothes', skin, removeHat)
					ESX.ShowNotification("Server: You may not wear police equipment!")
                end  
                if skin.torso_1 == 55 then
			       	TriggerEvent('skinchanger:loadClothes', skin, removeTorso)
                    ESX.ShowNotification("Server: You may not wear police equipment!")
                end                               
            end
            if skin.ears_1 == 0 then
			    TriggerEvent('skinchanger:loadClothes', skin, removeEars)
                ESX.ShowNotification("Server: You may not wear earpieces!")
            end  
            if skin.ears_1 == 1 then
			    TriggerEvent('skinchanger:loadClothes', skin, removeEars)
                ESX.ShowNotification("Server: You may not wear earpieces!")
            end  
            if skin.ears_1 == 2 then
			    TriggerEvent('skinchanger:loadClothes', skin, removeEars)
                ESX.ShowNotification("Server: You may not wear earpieces!")
            end  
            if skin.helmet_1 == 57 then
		       	TriggerEvent('skinchanger:loadClothes', skin, removeEars)
                ESX.ShowNotification("Server: You may not wear that helmet!")
            end
            if skin.helmet_1 == 115 then
		       	TriggerEvent('skinchanger:loadClothes', skin, removeEars)
                ESX.ShowNotification("Server: You may not wear that helmet!")
            end
            if skin.helmet_1 == 116 then
		       	TriggerEvent('skinchanger:loadClothes', skin, removeEars)
                ESX.ShowNotification("Server: You may not wear that helmet!")
            end
            if skin.helmet_1 == 117 then
		       	TriggerEvent('skinchanger:loadClothes', skin, removeHat)
                ESX.ShowNotification("Server: You may not wear that helmet!")
            end   
            if skin.helmet_1 == 118 then
		       	TriggerEvent('skinchanger:loadClothes', skin, removeHat)
                ESX.ShowNotification("Server: You may not wear that helmet!")
            end   
            if skin.helmet_1 == 114 then
		       	TriggerEvent('skinchanger:loadClothes', skin, removeHat)
                ESX.ShowNotification("Server: You may not wear that helmet!")
            end               
            if skin.helmet_1 == 134 then
		       	TriggerEvent('skinchanger:loadClothes', skin, removeHat)
                ESX.ShowNotification("Server: You may not wear that helmet!")
            end
		end)
	end
end)