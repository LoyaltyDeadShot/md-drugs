local QBCore = exports['qb-core']:GetCoreObject()
-------------------- stealing ingridients 
RegisterServerEvent('md-drugs:server:stealisosafrole', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  
  if Player.Functions.AddItem("isosafrole", 1) then 
	TriggerClientEvent('QBCore:Notify', src, "you stole isosafrole", "success")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['isosafrole'], "add",  1)
  end	
end)

RegisterServerEvent('md-drugs:server:stealmdp2p', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  
  if Player.Functions.AddItem("mdp2p", 1) then 
	TriggerClientEvent('QBCore:Notify', src, "you stole mdp2p", "success")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['mdp2p'], "add",  1)
  end	
end)

RegisterServerEvent('md-drugs:server:getpress', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("marked_money", 200000) then
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['white_xtc'], "add",  1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['marked_money'], "remove",  200000)
    Player.Functions.AddItem("singlepress", 1)
  elseif Player.Functions.RemoveItem("singlepress", 1) then
		if Player.Functions.RemoveItem('white_xtc', 20) then
			if Player.Functions.RemoveItem('red_xtc', 20) then
				if Player.Functions.RemoveItem('orange_xtc', 20) then
					if Player.Functions.RemoveItem('blue_xtc', 20) then
						Player.Functions.AddItem('dualpress', 1)
					else
					TriggerClientEvent('QBCore:Notify', src, "Give Me 20 Blue XTC", "error")
					end
				else
				TriggerClientEvent('QBCore:Notify', src, "Give me 20 Orange XTC", "error")
				end
			else
			TriggerClientEvent('QBCore:Notify', src, "Give me 20 Red XTC", "error")
			end
		else
		TriggerClientEvent('QBCore:Notify', src, "Give me 20 White XTC", "error")
		end
	 elseif Player.Functions.RemoveItem("dualpress", 1) then
		if Player.Functions.RemoveItem('white_xtc2', 50) then
			if Player.Functions.RemoveItem('red_xtc2', 50) then
				if Player.Functions.RemoveItem('orange_xtc2', 50) then
					if Player.Functions.RemoveItem('blue_xtc2', 50) then
						Player.Functions.AddItem('triplepress', 1)
					else
					TriggerClientEvent('QBCore:Notify', src, "Give Me 50 Blue XTC", "error")
					end
				else
				TriggerClientEvent('QBCore:Notify', src, "Give me 50 Orange XTC", "error")
				end
			else
			TriggerClientEvent('QBCore:Notify', src, "Give me 50 Red XTC", "error")
			end
		else
		TriggerClientEvent('QBCore:Notify', src, "Give me 50 White XTC", "error")
		end
    elseif Player.Functions.RemoveItem("triplepress", 1) then
		if Player.Functions.RemoveItem('white_xtc2', 150) then
			if Player.Functions.RemoveItem('red_xtc2', 150) then
				if Player.Functions.RemoveItem('orange_xtc2', 150) then
					if Player.Functions.RemoveItem('blue_xtc2', 150) then
						Player.Functions.AddItem('quadpress', 1)
					else
					TriggerClientEvent('QBCore:Notify', src, "Give Me 150 Blue XTC", "error")
					end
				else
				TriggerClientEvent('QBCore:Notify', src, "Give me 150 Orange XTC", "error")
				end
			else
			TriggerClientEvent('QBCore:Notify', src, "Give me 150 Red XTC", "error")
			end
		else
		TriggerClientEvent('QBCore:Notify', src, "Give me 150 White XTC", "error")
		end
	else 
	TriggerClientEvent('QBCore:Notify', src, "you aint got shit", "error")
	end
end)

------------- making powder
RegisterServerEvent('md-drugs:server:makingrawxtc', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  
  if Player.Functions.RemoveItem("", 1) then 
      if Player.Functions.RemoveItem("isosafrole", 1) then
          Player.Functions.AddItem("raw_xtc", 1)
		  TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "add",  1)
		  TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['isosafrole'], "remove",  1)
		  TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['mdp2p'], "remove",  1)
	  else
	  TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	  end
  else 
  TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
  end	
end)
  ----------------------------------- White unstamped
RegisterServerEvent('md-drugs:server:makextcsingle', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['white_xtc'], "add",  1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
    Player.Functions.AddItem("white_xtc", 1)
  end	
end)

RegisterServerEvent('md-drugs:server:makextcdual', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['white_xtc2'], "add",  1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
    Player.Functions.AddItem("white_xtc2", 1)
  end	
end)

RegisterServerEvent('md-drugs:server:makextctriple', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['white_xtc3'], "add",  1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
    Player.Functions.AddItem("white_xtc3", 1)
  end	
end)

RegisterServerEvent('md-drugs:server:makextcquad', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['white_xtc4'], "add",  1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
    Player.Functions.AddItem("white_xtc4", 1)
  end	
end)

------------------------------------ red unstamped
RegisterServerEvent('md-drugs:server:makeredxtcsingle', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("loosecoke", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['red_xtc'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['loosecoke'], "remove",  1)
		Player.Functions.AddItem("red_xtc", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makeredxtcdual', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("loosecoke", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['red_xtc2'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['loosecoke'], "remove",  1)
		Player.Functions.AddItem("red_xtc2", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makeredxtctriple', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("loosecoke", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['red_xtc3'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['loosecoke'], "remove",  1)
		Player.Functions.AddItem("red_xtc3", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makeredxtcquad', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("loosecoke", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['red_xtc4'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['loosecoke'], "remove",  1)
		Player.Functions.AddItem("red_xtc4", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)
------------------------------- Orange unstamped

RegisterServerEvent('md-drugs:server:makeorangextcsingle', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['orange_xtc'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("orange_xtc", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makeorangextcdual', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['orange_xtc2'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("orange_xtc2", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makeorangextctriple', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['orange_xtc3'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("orange_xtc3", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makeorangextcquad', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['orange_xtc4'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("orange_xtc4", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)
--------------------------------- blue unstamped
RegisterServerEvent('md-drugs:server:makebluextcsingle', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['blue_xtc'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("blue_xtc", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makebluextcdual', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['blue_xtc2'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("blue_xtc2", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makebluextctriple', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['blue_xtc3'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("blue_xtc3", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)

RegisterServerEvent('md-drugs:server:makebluextcquad', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if Player.Functions.RemoveItem("raw_xtc", 1) then
	if Player.Functions.RemoveItem("heroinvial", 1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['blue_xtc4'], "add",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['raw_xtc'], "remove",  1)
		TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['heroinvial'], "remove",  1)
		Player.Functions.AddItem("blue_xtc4", 1)
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
  end	
end)
---------------------------

RegisterServerEvent('md-drugs:server:stampwhite', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local luck = math.random(1,100)
  
	if luck <= 5 then 
		if Player.Functions.RemoveItem("white_xtc", 1) then
			Player.Functions.Additem("white_playboys", 1)
		elseif Player.Functions.RemoveItem("white_xtc2", 1) then
			Player.Functions.AddItem("white_playboys2", 1) 
		elseif Player.Functions.RemoveItem("white_xtc3", 1) then
			Player.Functions.AddItem("white_playboys3", 1) 
		elseif Player.Functions.RemoveItem("white_xtc4", 1) then
			Player.Functions.AddItem("white_playboys4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 6 and luck <= 22 then
		if Player.Functions.RemoveItem("white_xtc", 1) then
			Player.Functions.Additem("white_aliens", 1)
		elseif Player.Functions.RemoveItem("white_xtc2", 1) then
			Player.Functions.AddItem("white_aliens2", 1) 
		elseif Player.Functions.RemoveItem("white_xtc3", 1) then
			Player.Functions.AddItem("white_aliens3", 1) 
		elseif Player.Functions.RemoveItem("white_xtc4", 1) then
			Player.Functions.AddItem("white_aliens4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 23 and luck <= 43 then 
		if Player.Functions.RemoveItem("white_xtc", 1) then
			Player.Functions.Additem("white_pl", 1)
		elseif Player.Functions.RemoveItem("white_xtc2", 1) then
			Player.Functions.AddItem("white_pl2", 1) 
		elseif Player.Functions.RemoveItem("white_xtc3", 1) then
			Player.Functions.AddItem("white_pl3", 1) 
		elseif Player.Functions.RemoveItem("white_xtc4", 1) then
			Player.Functions.AddItem("white_pl4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 44 and luck <= 70 then 
		if Player.Functions.RemoveItem("white_xtc", 1) then
			Player.Functions.Additem("white_trolls", 1)
		elseif Player.Functions.RemoveItem("white_xtc2", 1) then
			Player.Functions.AddItem("white_trolls2", 1) 
		elseif Player.Functions.RemoveItem("white_xtc3", 1) then
			Player.Functions.AddItem("white_trolls3", 1) 
		elseif Player.Functions.RemoveItem("white_xtc4", 1) then
			Player.Functions.AddItem("white_trolls4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 71 and luck <= 100 then
		if Player.Functions.RemoveItem("white_xtc", 1) then
			Player.Functions.Additem("white_cats", 1)
		elseif Player.Functions.RemoveItem("white_xtc2", 1) then
			Player.Functions.AddItem("white_cats2", 1) 
		elseif Player.Functions.RemoveItem("white_xtc3", 1) then
			Player.Functions.AddItem("white_cats3", 1) 
		elseif Player.Functions.RemoveItem("white_xtc4", 1) then
			Player.Functions.AddItem("white_cats4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
end)

RegisterServerEvent('md-drugs:server:stampred', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local luck = math.random(1,100)
  
	if luck <= 5 then 
		if Player.Functions.RemoveItem("red_xtc", 1) then
			Player.Functions.Additem("red_playboys", 1)
		elseif Player.Functions.RemoveItem("red_xtc2", 1) then
			Player.Functions.AddItem("red_playboys2", 1) 
		elseif Player.Functions.RemoveItem("red_xtc3", 1) then
			Player.Functions.AddItem("red_playboys3", 1) 
		elseif Player.Functions.RemoveItem("red_xtc4", 1) then
			Player.Functions.AddItem("red_playboys4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 6 and luck <= 22 then
		if Player.Functions.RemoveItem("red_xtc", 1) then
			Player.Functions.Additem("red_aliens", 1)
		elseif Player.Functions.RemoveItem("red_xtc2", 1) then
			Player.Functions.AddItem("red_aliens2", 1) 
		elseif Player.Functions.RemoveItem("red_xtc3", 1) then
			Player.Functions.AddItem("red_aliens3", 1) 
		elseif Player.Functions.RemoveItem("red_xtc4", 1) then
			Player.Functions.AddItem("red_aliens4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 23 and luck <= 43 then 
		if Player.Functions.RemoveItem("red_xtc", 1) then
			Player.Functions.Additem("red_pl", 1)
		elseif Player.Functions.RemoveItem("red_xtc2", 1) then
			Player.Functions.AddItem("red_pl2", 1) 
		elseif Player.Functions.RemoveItem("red_xtc3", 1) then
			Player.Functions.AddItem("red_pl3", 1) 
		elseif Player.Functions.RemoveItem("red_xtc4", 1) then
			Player.Functions.AddItem("red_pl4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 44 and luck <= 70 then 
		if Player.Functions.RemoveItem("red_xtc", 1) then
			Player.Functions.Additem("red_trolls", 1)
		elseif Player.Functions.RemoveItem("red_xtc2", 1) then
			Player.Functions.AddItem("red_trolls2", 1) 
		elseif Player.Functions.RemoveItem("red_xtc3", 1) then
			Player.Functions.AddItem("red_trolls3", 1) 
		elseif Player.Functions.RemoveItem("red_xtc4", 1) then
			Player.Functions.AddItem("red_trolls4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 71 and luck <= 100 then
		if Player.Functions.RemoveItem("red_xtc", 1) then
			Player.Functions.Additem("red_cats", 1)
		elseif Player.Functions.RemoveItem("red_xtc2", 1) then
			Player.Functions.AddItem("red_cats2", 1) 
		elseif Player.Functions.RemoveItem("red_xtc3", 1) then
			Player.Functions.AddItem("red_cats3", 1) 
		elseif Player.Functions.RemoveItem("red_xtc4", 1) then
			Player.Functions.AddItem("red_cats4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
end)

RegisterServerEvent('md-drugs:server:stamporange', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local luck = math.random(1,100)
  
	if luck <= 5 then 
		if Player.Functions.RemoveItem("orange_xtc", 1) then
			Player.Functions.Additem("orange_playboys", 1)
		elseif Player.Functions.RemoveItem("orange_xtc2", 1) then
			Player.Functions.AddItem("orange_playboys2", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc3", 1) then
			Player.Functions.AddItem("orange_playboys3", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc4", 1) then
			Player.Functions.AddItem("orange_playboys4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 6 and luck <= 22 then
		if Player.Functions.RemoveItem("orange_xtc", 1) then
			Player.Functions.Additem("orange_aliens", 1)
		elseif Player.Functions.RemoveItem("orange_xtc2", 1) then
			Player.Functions.AddItem("orange_aliens2", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc3", 1) then
			Player.Functions.AddItem("orange_aliens3", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc4", 1) then
			Player.Functions.AddItem("orange_aliens4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 23 and luck <= 43 then 
		if Player.Functions.RemoveItem("orange_xtc", 1) then
			Player.Functions.Additem("orange_pl", 1)
		elseif Player.Functions.RemoveItem("orange_xtc2", 1) then
			Player.Functions.AddItem("orange_pl2", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc3", 1) then
			Player.Functions.AddItem("orange_pl3", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc4", 1) then
			Player.Functions.AddItem("orange_pl4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 44 and luck <= 70 then 
		if Player.Functions.RemoveItem("orange_xtc", 1) then
			Player.Functions.Additem("orange_trolls", 1)
		elseif Player.Functions.RemoveItem("orange_xtc2", 1) then
			Player.Functions.AddItem("orange_trolls2", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc3", 1) then
			Player.Functions.AddItem("orange_trolls3", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc4", 1) then
			Player.Functions.AddItem("orange_trolls4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 71 and luck <= 100 then
		if Player.Functions.RemoveItem("orange_xtc", 1) then
			Player.Functions.Additem("orange_cats", 1)
		elseif Player.Functions.RemoveItem("orange_xtc2", 1) then
			Player.Functions.AddItem("orange_cats2", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc3", 1) then
			Player.Functions.AddItem("orange_cats3", 1) 
		elseif Player.Functions.RemoveItem("orange_xtc4", 1) then
			Player.Functions.AddItem("orange_cats4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
end)

RegisterServerEvent('md-drugs:server:stampblue', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local luck = math.random(1,100)
  
	if luck <= 5 then 
		if Player.Functions.RemoveItem("blue_xtc", 1) then
			Player.Functions.Additem("blue_playboys", 1)
		elseif Player.Functions.RemoveItem("blue_xtc2", 1) then
			Player.Functions.AddItem("blue_playboys2", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc3", 1) then
			Player.Functions.AddItem("blue_playboys3", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc4", 1) then
			Player.Functions.AddItem("blue_playboys4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 6 and luck <= 22 then
		if Player.Functions.RemoveItem("blue_xtc", 1) then
			Player.Functions.Additem("blue_aliens", 1)
		elseif Player.Functions.RemoveItem("blue_xtc2", 1) then
			Player.Functions.AddItem("blue_aliens2", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc3", 1) then
			Player.Functions.AddItem("blue_aliens3", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc4", 1) then
			Player.Functions.AddItem("blue_aliens4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 23 and luck <= 43 then 
		if Player.Functions.RemoveItem("blue_xtc", 1) then
			Player.Functions.Additem("blue_pl", 1)
		elseif Player.Functions.RemoveItem("blue_xtc2", 1) then
			Player.Functions.AddItem("blue_pl2", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc3", 1) then
			Player.Functions.AddItem("blue_pl3", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc4", 1) then
			Player.Functions.AddItem("blue_pl4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 44 and luck <= 70 then 
		if Player.Functions.RemoveItem("blue_xtc", 1) then
			Player.Functions.Additem("blue_trolls", 1)
		elseif Player.Functions.RemoveItem("blue_xtc2", 1) then
			Player.Functions.AddItem("blue_trolls2", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc3", 1) then
			Player.Functions.AddItem("blue_trolls3", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc4", 1) then
			Player.Functions.AddItem("blue_trolls4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	elseif luck >= 71 and luck <= 100 then
		if Player.Functions.RemoveItem("blue_xtc", 1) then
			Player.Functions.Additem("blue_cats", 1)
		elseif Player.Functions.RemoveItem("blue_xtc2", 1) then
			Player.Functions.AddItem("blue_cats2", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc3", 1) then
			Player.Functions.AddItem("blue_cats3", 1) 
		elseif Player.Functions.RemoveItem("blue_xtc4", 1) then
			Player.Functions.AddItem("blue_cats4", 1)
		else 
		TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
		end
	else 
	TriggerClientEvent('QBCore:Notify', src, "You Dont Have the stuff", "error")
	end
end)



