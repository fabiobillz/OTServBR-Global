local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
	npcHandler:onThink()
end
local voices = { 
	{text = 'Fine jewels, rings and amulets!'} 
}

-- NPC shop
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({"golden amulet"}, 2130, 6600, 1)
shopModule:addBuyableItem({"ruby necklace"}, 2133, 3560, 1)
shopModule:addBuyableItem({"wedding ring"}, 2121, 990, 1)

shopModule:addSellableItem({"wedding ring"}, 2121, 100, 1)

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	if msgcontains(msg, 'precious necklace') then
		if player:getItemCount(8768) > 0 then
			npcHandler:say('Would you like to buy my precious necklace for 5000 gold?', cid)
			npcHandler.topic[cid] = 1
		end
	elseif msgcontains(msg, 'mouse') then
		npcHandler:say('Wha ... What??? Are you saying you\'ve seen a mouse here??', cid)
		npcHandler.topic[cid] = 2
	elseif msgcontains(msg, 'yes') then
		if npcHandler.topic[cid] == 1 then
			if player:removeMoneyNpc(5000) then
				player:removeItem(8768, 1)
				player:addItem(8767, 1)
				npcHandler:say('Here you go kind sir.', cid)
				npcHandler.topic[cid] = 0
			end
		elseif npcHandler.topic[cid] == 2 then
			if not player:removeItem(7487, 1) then
				npcHandler:say('There is no mouse here! Stop talking foolish things about serious issues!', cid)
				npcHandler.topic[cid] = 0
				return true
			end

			player:setStorageValue(Storage.WhatAFoolish.ScaredCarina, 1)
			npcHandler:say('IIIEEEEEK!', cid)
			npcHandler.topic[cid] = 0
		end
	elseif msgcontains(msg, 'no') then
		if npcHandler.topic[cid] == 2 then
			npcHandler:say('Thank goodness!', cid)
			npcHandler.topic[cid] = 0
		end
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Welcome, |PLAYERNAME|. I'm looking forward to {trade} with you.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "I sell some of the most beautiful jewels in Tibia.")

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
