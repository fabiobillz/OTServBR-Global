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
	{ text = "Please, not so loud, not so loud. Some of us are trying to rest in peace here." }
}

-- SPELLS FOR DRUID
keywordHandler:addSpellKeyword({"apprenticesstrike"},
	{
		npcHandler = npcHandler,
		spellName = "Apprentice's Strike",
		price = 0,
		level = 8,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"light"},
	{
		npcHandler = npcHandler,
		spellName = "Light",
		price = 0,
		level = 8,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"lighthealing"},
	{
		npcHandler = npcHandler,
		spellName = "Light Healing",
		price = 0,
		level = 8,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"findperson"},
	{
		npcHandler = npcHandler,
		spellName = "Find Person",
		price = 80,
		level = 8,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"magicrope"},
	{
		npcHandler = npcHandler,
		spellName = "Magic Rope",
		price = 200,
		level = 9,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"curepoison"},
	{
		npcHandler = npcHandler,
		spellName = "Cure Poison",
		price = 150,
		level = 10,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"energystrike"},
	{
		npcHandler = npcHandler,
		spellName = "Energy Strike",
		price = 800,
		level = 12,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"levitate"},
	{
		npcHandler = npcHandler,
		spellName = "Levitate",
		price = 500,
		level = 12,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"greatlight"},
	{
		npcHandler = npcHandler,
		spellName = "Great Light",
		price = 500,
		level = 13,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"terrastrike"},
	{
		npcHandler = npcHandler,
		spellName = "Terra Strike",
		price = 800,
		level = 13,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"flamestrike"},
	{
		npcHandler = npcHandler,
		spellName = "Flame Strike",
		price = 800,
		level = 14,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"food"},
	{
		npcHandler = npcHandler,
		spellName = "Food",
		price = 300,
		level = 14,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"haste"},
	{
		npcHandler = npcHandler,
		spellName = "Haste",
		price = 600,
		level = 14,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"magicshield"},
	{
		npcHandler = npcHandler,
		spellName = "Magic Shield",
		price = 450,
		level = 14,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"icestrike"},
	{
		npcHandler = npcHandler,
		spellName = "Ice Strike",
		price = 800,
		level = 15,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"physicalstrike"},
	{
		npcHandler = npcHandler,
		spellName = "Physical Strike",
		price = 800,
		level = 16,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"healfriend"},
	{
		npcHandler = npcHandler,
		spellName = "Heal Friend",
		price = 800,
		level = 18,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"icewave"},
	{
		npcHandler = npcHandler,
		spellName = "Ice Wave",
		price = 850,
		level = 18,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"intensehealing"},
	{
		npcHandler = npcHandler,
		spellName = "Intense Healing",
		price = 350,
		level = 20,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"stronghaste"},
	{
		npcHandler = npcHandler,
		spellName = "Strong Haste",
		price = 1300,
		level = 20,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"cureelectrification"},
	{
		npcHandler = npcHandler,
		spellName = "Cure Electrification",
		price = 1000,
		level = 22,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"creatureillusion"},
	{
		npcHandler = npcHandler,
		spellName = "Creature Illusion",
		price = 1000,
		level = 23,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"summoncreature"},
	{
		npcHandler = npcHandler,
		spellName = "Summon Creature",
		price = 2000,
		level = 25,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"ultimatelight"},
	{
		npcHandler = npcHandler,
		spellName = "Ultimate Light",
		price = 1600,
		level = 26,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"cureburning"},
	{
		npcHandler = npcHandler,
		spellName = "Cure Burning",
		price = 2000,
		level = 30,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"ultimatehealing"},
	{
		npcHandler = npcHandler,
		spellName = "Ultimate Healing",
		price = 1000,
		level = 30,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"invisible"},
	{
		npcHandler = npcHandler,
		spellName = "Invisible",
		price = 2000,
		level = 35,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"masshealing"},
	{
		npcHandler = npcHandler,
		spellName = "Mass Healing",
		price = 2200,
		level = 36,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"terrawave"},
	{
		npcHandler = npcHandler,
		spellName = "Terra Wave",
		price = 2500,
		level = 38,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"strongicewave"},
	{
		npcHandler = npcHandler,
		spellName = "Strong Ice Wave",
		price = 7500,
		level = 40,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"curebleeding"},
	{
		npcHandler = npcHandler,
		spellName = "Cure Bleeding",
		price = 2500,
		level = 45,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"envenom"},
	{
		npcHandler = npcHandler,
		spellName = "Envenom",
		price = 6000,
		level = 50,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"strongterrastrike"},
	{
		npcHandler = npcHandler,
		spellName = "Strong Terra Strike",
		price =6000,
		level = 70,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"strongicestrike"},
	{
		npcHandler = npcHandler,
		spellName = "Strong Ice Strike",
		price = 6000,
		level = 70,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"summongrovebeast"},
	{
		npcHandler = npcHandler,
		spellName = "Summon Grovebeast",
		price = 50000,
		level = 200,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
-- RUNES SPELLS
keywordHandler:addSpellKeyword({"poisonfieldrune"},
	{
		npcHandler = npcHandler,
		spellName = "Poison Field Rune",
		price = 300,
		level = 14,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"firefieldrune"},
	{
		npcHandler = npcHandler,
		spellName = "Fire Field Rune",
		price = 500,
		level = 15,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"lightmagicmissilerune"},
	{
		npcHandler = npcHandler,
		spellName = "Light Magic Missile Rune",
		price = 500,
		level = 15,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"intensehealingrune"},
	{
		npcHandler = npcHandler,
		spellName = "Intense Healing Rune",
		price = 600,
		level = 15,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"curepoisonrune"},
	{
		npcHandler = npcHandler,
		spellName = "Cure Poison Rune",
		price = 600,
		level = 15,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"convincecreaturerune"},
	{
		npcHandler = npcHandler,
		spellName = "Convince Creature Rune",
		price = 800,
		level = 16,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"destroyfieldrune"},
	{
		npcHandler = npcHandler,
		spellName = "Destroy Field Rune",
		price = 700,
		level = 17,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"energyfieldrune"},
	{
		npcHandler = npcHandler,
		spellName = "Destroy Field Rune",
		price = 700,
		level = 18,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"disintegraterune"},
	{
		npcHandler = npcHandler,
		spellName = "Disintegrate Rune",
		price = 900,
		level = 21,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"ultimatehealingrune"},
	{
		npcHandler = npcHandler,
		spellName = "Ultimate Healing Rune",
		price = 1500,
		level = 24,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"stalagmiterune"},
	{
		npcHandler = npcHandler,
		spellName = "stalagmite rune",
		price = 1400,
		level = 24,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"poisonbombrune"},
	{
		npcHandler = npcHandler,
		spellName = "Poison Bomb Rune",
		price = 1000,
		level = 25,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"heavymagicmissilerune"},
	{
		npcHandler = npcHandler,
		spellName = "Heavy Magic Missile Rune",
		price = 1500,
		level = 25,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"firebombrune"},
	{
		npcHandler = npcHandler,
		spellName = "fire bomb rune",
		price = 1500,
		level = 27,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"animatedeadrune"},
	{
		npcHandler = npcHandler,
		spellName = "Animate Dead Rune",
		price = 1200,
		level = 27,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"chameleonrune"},
	{
		npcHandler = npcHandler,
		spellName = "Chameleon Rune",
		price = 1300,
		level = 27,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"iciclerune"},
	{
		npcHandler = npcHandler,
		spellName = "Icicle Rune",
		price = 1700,
		level = 28,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"stoneshowerrune"},
	{
		npcHandler = npcHandler,
		spellName = "Stone Shower Rune",
		price = 1100,
		level = 28,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"poisonwallrune"},
	{
		npcHandler = npcHandler,
		spellName = "Poison Wall Rune",
		price = 1600,
		level = 29,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"avalancherune"},
	{
		npcHandler = npcHandler,
		spellName = "Avalanche Rune",
		price = 1200,
		level = 30,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"explosionrune"},
	{
		npcHandler = npcHandler,
		spellName = "Explosion Rune",
		price = 1800,
		level = 31,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"firewallrune"},
	{
		npcHandler = npcHandler,
		spellName = "Fire Wall Rune",
		price = 2000,
		level = 33,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"energywallrune"},
	{
		npcHandler = npcHandler,
		spellName = "Energy Wall Rune",
		price = 2500,
		level = 41,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)
keywordHandler:addSpellKeyword({"paralyserune"},
	{
		npcHandler = npcHandler,
		spellName = "Paralyse Rune",
		price = 1900,
		level = 54,
		vocation = VOCATION.CLIENT_ID.DRUID
	}
)

keywordHandler:addKeyword({"healing spells"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "In this category I have '{lighthealing}', '{healfriend}', '{curepoison}', '{cureelectrification}', \z
		'{intensehealing}', '{cureburning}', '{ultimatehealing}', '{masshealing}' and '{curebleeding}'."
	}
)
keywordHandler:addKeyword({"support spells"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "In this category I have '{findperson}', '{magicrope}', '{levitate}', '{light}', \z
		'{greatlight}', '{haste}', '{food}', '{magicshield}', '{stronghaste}', '{creatureillusion}', \z
		'{summoncreature}', '{ultimatelight}', '{invisible}', '{envenom}', '{summongrovebeast}'."
	}
)
keywordHandler:addKeyword({"attack spells"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "In this category I have '{apprenticesstrike}', '{energystrike}', '{terrastrike}', '{flamestrike}', '{icestrike}',\z
		'{physicalstrike}', '{icewave}', '{terrawave}', '{strongicewave}', '{strongterrastrike}' and '{strongicestrike}'."
	}
)
keywordHandler:addKeyword({"runes"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "In this category I have '{poisonfieldrune}', '{firefieldrune}', '{lightmagicmissilerune}', '{intensehealingrune}', \z
		'{curepoisonrune}', '{convincecreaturerune}', '{destroyfieldrune}', '{energyfieldrune}', '{disintegraterune}',\z
		'{ultimatehealingrune}', '{stalagmiterune}', '{poisonbombrune}', '{heavymagicmissilerune}', '{firebombrune}', '{animatedeadrune}', \z
		'{chameleonrune}', '{iciclerune}', '{stoneshowerrune}', '{poisonwallrune}', '{avalancherune}', '{explosionrune}', \z
		'{firewallrune}', '{energywallrune}' and '{paralyserune}'."
	}
)
keywordHandler:addKeyword({"spells"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "I can teach you {healing spells}, {support spells}, {attack spells} and {runes}. \z
		What kind of spell do you wish to learn?"
	}
)

local voices = { {text = 'Please, not so loud, not so loud. Some of us are trying to rest in peace here.'} }
npcHandler:addModule(VoiceModule:new(voices))

-- Twist of Fate
local blessKeyword = keywordHandler:addKeyword({'twist of fate'}, StdModule.say, {npcHandler = npcHandler,
	text = {
		'This is a special blessing I can bestow upon you once you have obtained at least one of the other blessings and which functions a bit differently. ...',
		'It only works when you\'re killed by other adventurers, which means that at least half of the damage leading to your death was caused by others, not by monsters or the environment. ...',
		'The {twist of fate} will not reduce the death penalty like the other blessings, but instead prevent you from losing your other blessings as well as the amulet of loss, should you wear one. It costs the same as the other blessings. ...',
		'Would you like to receive that protection for a sacrifice of |PVPBLESSCOST| gold, child?'
	}})
	blessKeyword:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, text = 'So receive the protection of the twist of fate, pilgrim.', cost = '|PVPBLESSCOST|', bless = 6})
	blessKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'Fine. You are free to decline my offer.', reset = true})

-- Adventurer Stone
keywordHandler:addKeyword({'adventurer stone'}, StdModule.say, {npcHandler = npcHandler, text = 'Keep your adventurer\'s stone well.'}, function(player) return player:getItemById(18559, true) end)

local stoneKeyword = keywordHandler:addKeyword({'adventurer stone'}, StdModule.say, {npcHandler = npcHandler, text = 'Ah, you want to replace your adventurer\'s stone for free?'}, function(player) return player:getStorageValue(Storage.AdventurersGuild.FreeStone.Rahkem) ~= 1 end)
	stoneKeyword:addChildKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, text = 'Here you are. Take care.', reset = true}, nil, function(player) player:addItem(18559, 1) player:setStorageValue(Storage.AdventurersGuild.FreeStone.Rahkem, 1) end)
	stoneKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'No problem.', reset = true})

local stoneKeyword = keywordHandler:addKeyword({'adventurer stone'}, StdModule.say, {npcHandler = npcHandler, text = 'Ah, you want to replace your adventurer\'s stone for 30 gold?'})
	stoneKeyword:addChildKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, text = 'Here you are. Take care.', reset = true},
		function(player) return player:getMoney() + player:getBankBalance() >= 30 end,
		function(player) if player:removeMoneyNpc(30) then player:addItem(18559, 1) end end
	)
	stoneKeyword:addChildKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, text = 'Sorry, you don\'t have enough money.', reset = true})
	stoneKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'No problem.', reset = true})

-- Healing
local function addHealKeyword(text, condition, effect)
	keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = text},
		function(player) return player:getCondition(condition) ~= nil end,
		function(player)
			player:removeCondition(condition)
			player:getPosition():sendMagicEffect(effect)
		end
	)
end

addHealKeyword('You are burning. Let me quench those flames.', CONDITION_FIRE, CONST_ME_MAGIC_GREEN)
addHealKeyword('You are poisoned. Let me soothe your pain.', CONDITION_POISON, CONST_ME_MAGIC_RED)
addHealKeyword('You are electrified, my child. Let me help you to stop trembling.', CONDITION_ENERGY, CONST_ME_MAGIC_GREEN)

keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You are hurt, my child. I will heal your wounds.'},
	function(player) return player:getHealth() < 40 end,
	function(player)
		local health = player:getHealth()
		if health < 40 then player:addHealth(40 - health) end
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	end
)
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You aren\'t looking that bad. Sorry, I can\'t help you. But if you are looking for additional protection you should go on the {pilgrimage} of ashes or get the protection of the {twist of fate} here.'})

-- Wooden Stake
keywordHandler:addKeyword({'stake'}, StdModule.say, {npcHandler = npcHandler, text = 'I think you have forgotten to bring your stake, pilgrim.'}, function(player) return player:getStorageValue(Storage.FriendsandTraders.TheBlessedStake) == 8 and player:getItemCount(5941) == 0 end)

local stakeKeyword = keywordHandler:addKeyword({'stake'}, StdModule.say, {npcHandler = npcHandler, text = 'Yes, I was informed what to do. Are you prepared to receive my line of the prayer?'}, function(player) return player:getStorageValue(Storage.FriendsandTraders.TheBlessedStake) == 8 end)
	stakeKeyword:addChildKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, text = 'So receive my prayer: \'Let there be power and compassion\'. Now, bring your stake to Brewster in Port Hope for the next line of the prayer. I will inform him what to do.', reset = true}, nil,
		function(player) player:setStorageValue(Storage.FriendsandTraders.TheBlessedStake, 9) player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE) end
	)
	stakeKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'I will wait for you.', reset = true})

keywordHandler:addKeyword({'stake'}, StdModule.say, {npcHandler = npcHandler, text = 'You should visit Brewster in Port Hope now.'}, function(player) return player:getStorageValue(Storage.FriendsandTraders.TheBlessedStake) == 9 end)
keywordHandler:addKeyword({'stake'}, StdModule.say, {npcHandler = npcHandler, text = 'You already received my line of the prayer.'}, function(player) return player:getStorageValue(Storage.FriendsandTraders.TheBlessedStake) > 9 end)
keywordHandler:addKeyword({'stake'}, StdModule.say, {npcHandler = npcHandler, text = 'A blessed stake? That is a strange request. Maybe Quentin knows more, he is one of the oldest monks after all.'})

-- Basic
keywordHandler:addKeyword({'pilgrimage'}, StdModule.say, {npcHandler = npcHandler, text = 'Whenever you receive a lethal wound, your vital force is damaged and there is a chance that you lose some of your equipment. With every single of the five {blessings} you have, this damage and chance of loss will be reduced.'})
keywordHandler:addKeyword({'blessings'}, StdModule.say, {npcHandler = npcHandler, text = 'There are five blessings available in five sacred places: the {spiritual} shielding, the spark of the {phoenix}, the {embrace} of Tibia, the fire of the {suns} and the wisdom of {solitude}. Additionally, you can receive the {twist of fate} here.'})
keywordHandler:addKeyword({'spiritual'}, StdModule.say, {npcHandler = npcHandler, text = 'I see you received the spiritual shielding in the whiteflower temple south of Thais.'}, function(player) return player:hasBlessing(1) end)
keywordHandler:addAliasKeyword({'shield'})
keywordHandler:addKeyword({'embrace'}, StdModule.say, {npcHandler = npcHandler, text = 'I can sense that the druids north of Carlin have provided you with the Embrace of Tibia.'}, function(player) return player:hasBlessing(2) end)
keywordHandler:addKeyword({'suns'}, StdModule.say, {npcHandler = npcHandler, text = 'I can see you received the blessing of the two suns in the suntower near Ab\'Dendriel.'}, function(player) return player:hasBlessing(3) end)
keywordHandler:addAliasKeyword({'fire'})
keywordHandler:addKeyword({'phoenix'}, StdModule.say, {npcHandler = npcHandler, text = 'I can sense that the spark of the phoenix already was given to you by the dwarven priests of earth and fire in Kazordoon.'}, function(player) return player:hasBlessing(4) end)
keywordHandler:addAliasKeyword({'spark'})
keywordHandler:addKeyword({'solitude'}, StdModule.say, {npcHandler = npcHandler, text = 'I can sense you already talked to the hermit Eremo on the isle of Cormaya and received this blessing.'}, function(player) return player:hasBlessing(5) end)
keywordHandler:addAliasKeyword({'wisdom'})
keywordHandler:addKeyword({'spiritual'}, StdModule.say, {npcHandler = npcHandler, text = 'You can ask for the blessing of spiritual shielding in the whiteflower temple south of Thais.'})
keywordHandler:addAliasKeyword({'shield'})
keywordHandler:addKeyword({'embrace'}, StdModule.say, {npcHandler = npcHandler, text = 'The druids north of Carlin will provide you with the embrace of Tibia.'})
keywordHandler:addKeyword({'suns'}, StdModule.say, {npcHandler = npcHandler, text = 'You can ask for the blessing of the two suns in the suntower near Ab\'Dendriel.'})
keywordHandler:addAliasKeyword({'fire'})
keywordHandler:addKeyword({'phoenix'}, StdModule.say, {npcHandler = npcHandler, text = 'The spark of the phoenix is given by the dwarven priests of earth and fire in Kazordoon.'})
keywordHandler:addAliasKeyword({'spark'})
keywordHandler:addKeyword({'solitude'}, StdModule.say, {npcHandler = npcHandler, text = 'Talk to the hermit Eremo on the isle of Cormaya about this blessing.'})
keywordHandler:addAliasKeyword({'wisdom'})

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:addModule(FocusModule:new())
