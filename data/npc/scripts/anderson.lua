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
	{text = 'Passages to Tibia, Folda and Vega.'}
}

-- Travel
local function addTravelKeyword(keyword, text, cost, destination)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, 
		{
			npcHandler = npcHandler, 
			text = 'Do you want to sail ' .. text, cost = cost
		}
	)
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, 
			{
				npcHandler = npcHandler, 
				premium = false, 
				cost = cost, 
				destination = destination
			}
		)
		travelKeyword:addChildKeyword({'no'}, StdModule.say, 
			{
				npcHandler = npcHandler, 
				text = 'We would like to serve you some time.', 
				reset = true
			}
		)
end

addTravelKeyword('tibia', 'back to Tibia?', 0, Position(32235, 31674, 7))
addTravelKeyword('vega', 'to Vega for |TRAVELCOST|?', 10, Position(32020, 31692, 7))
addTravelKeyword('folda', 'to Folda for |TRAVELCOST|?', 10, Position(32046, 31578, 7))

-- Basic
keywordHandler:addKeyword({'passage'}, StdModule.say, 
	{
		npcHandler = npcHandler, 
		text = 'Where do you want to go? To {Tibia}, {Folda} or {Vega}?'
	}
)
keywordHandler:addKeyword({'job'}, StdModule.say, 
	{
		npcHandler = npcHandler, 
		text = 'I am the captain of this ship.'
	}
)
keywordHandler:addKeyword({'captain'}, StdModule.say, 
	{
		npcHandler = npcHandler, 
		text = 'I am the captain of this ship.'
	}
)

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:addModule(FocusModule:new())
