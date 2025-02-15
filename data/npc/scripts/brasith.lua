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

shopModule:addBuyableItem({"banana"}, 2676, 2, 1)
shopModule:addBuyableItem({"broccoli"}, 12417, 3, 1)
shopModule:addBuyableItem({"bulb of garlic"}, 9114, 4, 1)
shopModule:addBuyableItem({"carrot"}, 2684, 3, 1)
shopModule:addBuyableItem({"cauliflower"}, 12418, 4, 1)
shopModule:addBuyableItem({"cherry"}, 2679, 1, 1)
shopModule:addBuyableItem({"corncob"}, 2686, 3, 1)
shopModule:addBuyableItem({"grapes"}, 2681, 3, 1)
shopModule:addBuyableItem({"juice squeezer"}, 5865, 100, 1)
shopModule:addBuyableItem({"melon"}, 2682, 8, 1)
shopModule:addBuyableItem({"potato"}, 8838, 4, 1)
shopModule:addBuyableItem({"pumpkin"}, 2683, 10, 1)
shopModule:addBuyableItem({"strawberry"}, 2680, 1, 1)
shopModule:addBuyableItem({"bottle of bug milk"}, 9674, 200, 1)
shopModule:addBuyableItem({"vial of milk"}, 2006, 15, 1, 6)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = "You may buy all the things we grow or gather at this place."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, text = "We abandoned the gods a long time ago. A short time after they abandoned us."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, text = "They are lost, and if they still exist they are alone in the cold and the darkness."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, text = "The Kuridai left the true path and can't see their error. Their way of living may have been suitable in the past, but if they don't come back to us, their path will lead into darkness."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, text = "We have still much to learn but we are on the correct path at least."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, text = "The Cenath forgot as many as they learned. I doubt they find the wisdom they are looking for without the things they neglected in their pursuit of knowledge."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, text = "I don't claim to understand this creatures but sometimes they are more close to the roots than we are."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, text = "They are so many, so planless, so divided. They choose a path I do not want for my own race."})
keywordHandler:addKeyword({'plants'}, StdModule.say, {npcHandler = npcHandler, text = "Life takes many forms. Plants are a very basic form of life. Its simplicity makes them close to the core of nature."})
keywordHandler:addKeyword({'tree'}, StdModule.say, {npcHandler = npcHandler, text = "Life takes many forms. Plants are a very basic form of life. Its simplicity makes them close to the core of nature."})

npcHandler:setMessage(MESSAGE_GREET, "Ashari, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Asha Thrazi.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Asha Thrazi.")
npcHandler:addModule(FocusModule:new())
