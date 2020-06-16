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
	{text = 'Mumbling Smelled like fish anyway.'} 
}

-- NPC shop
local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({"black pearl"}, 2144, 280, 1)
shopModule:addBuyableItem({"bronze goblet"}, 5807, 2000, 1)
shopModule:addBuyableItem({"golden amulet"}, 2130, 6600, 1)
shopModule:addBuyableItem({"golden goblet"}, 5805, 5000, 1)
shopModule:addBuyableItem({"ruby necklace"}, 2133, 3560, 1)
shopModule:addBuyableItem({"silver goblet"}, 5806, 3000, 1)
shopModule:addBuyableItem({"small amethyst"}, 2150, 400, 1)
shopModule:addBuyableItem({"small diamond"}, 2145, 600, 1)
shopModule:addBuyableItem({"small emerald"}, 2149, 500, 1)
shopModule:addBuyableItem({"small ruby"}, 2147, 500, 1)
shopModule:addBuyableItem({"small sapphire"}, 2146, 500, 1)
shopModule:addBuyableItem({"wedding ring"}, 2121, 990, 1)
shopModule:addBuyableItem({"white pearl"}, 2143, 320, 1)

shopModule:addSellableItem({"ancient coin"}, 27058, 350, 1)
shopModule:addSellableItem({"black pearl"}, 2144, 280, 1)
shopModule:addSellableItem({"blue crystal shard"}, 18413, 1500, 1)
shopModule:addSellableItem({"blue crystal splinter"}, 18418, 400, 1)
shopModule:addSellableItem({"brown crystal splinter"}, 18417, 400, 1)
shopModule:addSellableItem({"coral brooch"}, 27059, 750, 1)
shopModule:addSellableItem({"crunor idol"}, 34693, 30000, 1)
shopModule:addSellableItem({"cyan crystal fragment"}, 18419, 800, 1)
shopModule:addSellableItem({"dragon figurine"}, 34691, 45000, 1)
shopModule:addSellableItem({"gemmed figurine"}, 27060, 3500, 1)
shopModule:addSellableItem({"giant emerald"}, 34698, 90000, 1)
shopModule:addSellableItem({"giant ruby"}, 34697, 70000, 1)
shopModule:addSellableItem({"giant sapphire"}, 34699, 50000, 1)
shopModule:addSellableItem({"giant shimmering pearl"}, 7633, 3000, 1)
shopModule:addSellableItem({"gold ingot"}, 9971, 5000, 1)
shopModule:addSellableItem({"gold nugget"}, 2157, 850, 1)
shopModule:addSellableItem({"green crystal fragment"}, 18421, 800, 1)
shopModule:addSellableItem({"green crystal shard"}, 18415, 1500, 1)
shopModule:addSellableItem({"green crystal splinter"}, 18416, 400, 1)
shopModule:addSellableItem({"onyx chip"}, 24849, 500, 1)
shopModule:addSellableItem({"opal"}, 24850, 500, 1)
shopModule:addSellableItem({"ornate locket"}, 34694, 18000, 1)
shopModule:addSellableItem({"prismatic quartz"}, 27630, 450, 1)
shopModule:addSellableItem({"rainbow quartz"}, 29038, 500, 1)
shopModule:addSellableItem({"red crystal fragment"}, 18420, 800, 1)
shopModule:addSellableItem({"small amethyst"}, 2150, 200, 1)
shopModule:addSellableItem({"small diamond"}, 2145, 300, 1)
shopModule:addSellableItem({"small emerald"}, 2149, 250, 1)
shopModule:addSellableItem({"small enchanted amethyst"}, 7762, 200, 1)
shopModule:addSellableItem({"small enchanted emerald"}, 7761, 250, 1)
shopModule:addSellableItem({"small enchanted ruby"}, 7760, 250, 1)
shopModule:addSellableItem({"small enchanted sapphire"}, 7759, 250, 1)
shopModule:addSellableItem({"small ruby"}, 2147, 250, 1)
shopModule:addSellableItem({"small sapphire"}, 2146, 250, 1)
shopModule:addSellableItem({"small topaz"}, 9970, 200, 1)
shopModule:addSellableItem({"tiger eye"}, 27629, 350, 1)
shopModule:addSellableItem({"unicorn figurine"}, 34692, 50000, 1)
shopModule:addSellableItem({"violet crystal shard"}, 18414, 1500, 1)
shopModule:addSellableItem({"wedding ring"}, 2121, 100, 1)
shopModule:addSellableItem({"white pearl"}, 2143, 160, 1)

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if msgcontains(msg, 'key') then
		if player:getStorageValue(Storage.ThievesGuild.Mission06) == 1 then
			local headItem = player:getSlotItem(CONST_SLOT_HEAD)
			if headItem and headItem.itemid == 2665 and player:getStorageValue(Storage.Postman.Rank) == 5 and player:getSex() ~= PLAYERSEX_FEMALE then
				player:addItem(8762)
				player:setStorageValue(Storage.ThievesGuild.Mission06, 2)
				npcHandler:say('Oh my! You look so great in your uniform! You archpostmen are not only daring but also handsome. Here take it, that\'s the key you wanted. Just promise to visit me now and then!', cid)
			elseif player:removeItem(8767, 1) then
				player:addItem(8762)
				player:setStorageValue(Storage.ThievesGuild.Mission06, 2)
				npcHandler:say('Oh my, such a lovely necklace! Here take it, that\'s the key you wanted. Now let me admire my precious necklace alone.', cid)
			else
				npcHandler:say('I am sorry, I am not interested in your money. Maybe you should try your luck with Herbert, the.Postman.instead.', cid)
			end
		end
	end
	return true
end

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
