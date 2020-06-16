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
	{ text = "I have gems and beautiful jewellery for you!" }
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

local playerTopic = {}
local function greetCallback(cid)
	local player = Player(cid)
	if player:getStorageValue(Storage.Kilmaresh.First.Acesso) < 1 then
		npcHandler:setMessage(MESSAGE_GREET, "How could I help you?") -- It needs to be revised, it's not the same as the global
		playerTopic[cid] = 1
	elseif (player:getStorageValue(Storage.Kilmaresh.First.JamesfrancisTask) >= 0 and player:getStorageValue(Storage.Kilmaresh.First.JamesfrancisTask) <= 50)
	and player:getStorageValue(Storage.Kilmaresh.First.Mission) < 3 then
		npcHandler:setMessage(MESSAGE_GREET, "How could I help you?") -- It needs to be revised, it's not the same as the global
		playerTopic[cid] = 15
	elseif player:getStorageValue(Storage.Kilmaresh.First.Mission) == 4 then
		npcHandler:setMessage(MESSAGE_GREET, "How could I help you?") -- It needs to be revised, it's not the same as the global
		player:setStorageValue(Storage.Kilmaresh.First.Mission, 5)
		playerTopic[cid] = 20
	end
	npcHandler:addFocus(cid)
	return true
end

local function creatureSayCallback(cid, type, msg)
if not npcHandler:isFocused(cid) then
	return false
end
npcHandler.topic[cid] = playerTopic[cid]
local player = Player(cid)

if msgcontains(msg, "daughter") and player:getStorageValue(Storage.TheSecretLibrary.Peacock) == 1 then
	npcHandler:say({"I always feared that I lost her. And yet, all those years, I still had a gleam of hope. I'm devastated to learn about her fate - but at least I have certainty now. Thank you for telling me."}, cid)
	player:setStorageValue(Storage.TheSecretLibrary.Peacock, 2)
	npcHandler.topic[cid] = 1
	playerTopic[cid] = 1
end



return true
end

npcHandler:setMessage(MESSAGE_WALKAWAY, 'Well, bye then.')

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
