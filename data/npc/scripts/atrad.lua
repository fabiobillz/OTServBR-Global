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

-- NPC shop
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({"assassin star"}, 7368, 100, 1)

function greetCallback(cid)
	local fire = Player(cid):getCondition(CONDITION_FIRE)
	if fire then
		return true
	end
	return false
end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	if(msgcontains(msg, "addon") or msgcontains(msg, "outfit")) then
		if(getPlayerStorageValue(cid, Storage.Atrad) < 1) then
			npcHandler:say("You managed to deceive Erayo? Impressive. Well, I guess, since you have come that far, I might as well give you a task too, eh?", cid)
			npcHandler.topic[cid] = 2
		end
	elseif(msgcontains(msg, "nose ring") or msgcontains(msg, "ring")) then
		if(getPlayerStorageValue(cid, Storage.Atrad) == 1) then
			if(getPlayerItemCount(cid, 5804) >= 1) and getPlayerItemCount(cid, 5930) >= 1 then
				npcHandler:say("I see you brought my stuff. Good. I'll keep my promise: Here's katana in return.", cid)
				doPlayerRemoveItem(cid, 5804, 1)
				doPlayerRemoveItem(cid, 5930, 1)
				doPlayerAddOutfit(cid, getPlayerSex(cid) == 0 and 156 or 152, 2)
				setPlayerStorageValue(cid, Storage.Atrad, 2) -- exaust
				npcHandler.topic[cid] = 0
			else
				npcHandler:say("You don't have it...", cid)
				npcHandler.topic[cid] = 0
			end
		end
	elseif(msgcontains(msg, "yes")) then
		if(npcHandler.topic[cid] == 2) then
			npcHandler:say("Okay, listen up. I don't have a list of stupid objects, I just want two things. A behemoth claw and a nose ring. Got that?", cid)
			npcHandler.topic[cid] = 3
		elseif(npcHandler.topic[cid] == 3) then
			npcHandler:say("Good. Come back then you have BOTH. Should be clear where to get a behemoth claw from. There's a horned fox who wears a nose ring. Good luck.", cid)
			setPlayerStorageValue(cid, Storage.Atrad, 1)
			npcHandler.topic[cid] = 0
		end
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Hehe. That's a good show, |PLAYERNAME|, with all the pyro effects. \z
You got my attention. For a minute or so.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "There you go!")

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
