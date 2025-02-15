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

shopModule:addSellableItem({"bow"}, 2456, 130, 1)
shopModule:addSellableItem({"bowl of terror sweat"}, 22538, 500, 1)
shopModule:addSellableItem({"broken visor"}, 22518, 1900, 1)
shopModule:addSellableItem({"crossbow"}, 2455, 160, 1)
shopModule:addSellableItem({"dead weight"}, 22536, 450, 1)
shopModule:addSellableItem({"empty potion flask"}, 7634, 5, 1)
shopModule:addSellableItem({"empty potion flask"}, 7635, 8, 1)
shopModule:addSellableItem({"empty potion flask"}, 7636, 10, 1)
shopModule:addSellableItem({"frazzle skin"}, 22533, 400, 1)
shopModule:addSellableItem({"frazzle tongue"}, 22532, 700, 1)
shopModule:addSellableItem({"goosebump leather"}, 22539, 650, 1)
shopModule:addSellableItem({"hemp rope"}, 22540, 350, 1)
shopModule:addSellableItem({"pool of chitinous glue"}, 22541, 480, 1)
shopModule:addSellableItem({"sight of surrenders eye"}, 22517, 3000, 1)
shopModule:addSellableItem({"silencer claws"}, 22534, 390, 1)
shopModule:addSellableItem({"silencer resonating chamber"}, 22535, 600, 1)
shopModule:addSellableItem({"spear"}, 2389, 3, 1)
shopModule:addSellableItem({"trapped bad dream monster"}, 22537, 900, 1)
shopModule:addSellableItem({"vial"}, 2006, 5, 1)

shopModule:addBuyableItem({"animate dead rune"}, 2316, 375, 1)
shopModule:addBuyableItem({"arrow"}, 2544, 2, 1)
shopModule:addBuyableItem({"bolt"}, 2580, 4, 1)
shopModule:addBuyableItem({"bow"}, 2456, 400, 1)
shopModule:addBuyableItem({"crossbow"}, 2455, 500, 1)
shopModule:addBuyableItem({"crystalline arrow"}, 18304, 20, 1)
shopModule:addBuyableItem({"desintegrate rune"}, 2310, 26, 1)
shopModule:addBuyableItem({"drill bolt"}, 18436, 12, 1)
shopModule:addBuyableItem({"earth arrow"}, 7850, 5, 500)
shopModule:addBuyableItem({"energy bomb rune"}, 2262, 203, 500)
shopModule:addBuyableItem({"envenomed arrow"}, 18437, 12, 1)
shopModule:addBuyableItem({"fireball rune"}, 2302, 30, 1)
shopModule:addBuyableItem({"flaming arrow"}, 7840, 5, 1)
shopModule:addBuyableItem({"flash arrow"}, 7838, 5, 1)
shopModule:addBuyableItem({"great health potion"}, 7591, 225, 1)
shopModule:addBuyableItem({"great mana potion"}, 7590, 144, 1)
shopModule:addBuyableItem({"great spirit potion"}, 8472, 228, 1)
shopModule:addBuyableItem({"health potion"}, 7618, 50, 1)
shopModule:addBuyableItem({"holy missile rune"}, 2295, 16, 1)
shopModule:addBuyableItem({"icicle rune"}, 2271, 30, 1)
shopModule:addBuyableItem({"magic wall rune"}, 2293, 116, 1)
shopModule:addBuyableItem({"mana potion"}, 7620, 56, 1)
shopModule:addBuyableItem({"onyx arrow"}, 7365, 7, 1)
shopModule:addBuyableItem({"paralyze rune"}, 2278, 700, 1)
shopModule:addBuyableItem({"piercing bolt"}, 7363, 5, 1)
shopModule:addBuyableItem({"poison bomb rune"}, 2286, 85, 1)
shopModule:addBuyableItem({"power bolt"}, 2547, 7, 1)
shopModule:addBuyableItem({"prismatic bolt"}, 18435, 20, 1)
shopModule:addBuyableItem({"royal spear"}, 7378, 15, 1)
shopModule:addBuyableItem({"shiver arrow"}, 7839, 5, 1)
shopModule:addBuyableItem({"soulfire rune"}, 2308, 46, 1)
shopModule:addBuyableItem({"spear"}, 2389, 9, 1)
shopModule:addBuyableItem({"stone shower rune"}, 2288, 37, 1)
shopModule:addBuyableItem({"strong health potion"}, 7588, 115, 1)
shopModule:addBuyableItem({"strong mana potion"}, 7589, 93, 1)
shopModule:addBuyableItem({"supreme health potion"}, 26031, 500, 1)
shopModule:addBuyableItem({"tarsal arrow"}, 15648, 6, 1)
shopModule:addBuyableItem({"throwing star"}, 2399, 42, 1)
shopModule:addBuyableItem({"thunderstorm rune"}, 2315, 47, 1)
shopModule:addBuyableItem({"ultimate health potion"}, 8473, 379, 1)
shopModule:addBuyableItem({"ultimate mana potion"}, 26029, 438, 1)
shopModule:addBuyableItem({"ultimate spirit potion"}, 26030, 438, 1)
shopModule:addBuyableItem({"vortex bolt"}, 15649, 6, 1)
shopModule:addBuyableItem({"wild growth rune"}, 2269, 160, 1)

npcHandler:setMessage(MESSAGE_GREET, "Be mourned pilgrim in flesh. I'm selling general goods.")
npcHandler:setMessage(MESSAGE_FAREWELL, "May enlightenment be your path, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "May enlightenment be your path, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, just browse through my offers.")

npcHandler:addModule(FocusModule:new())
