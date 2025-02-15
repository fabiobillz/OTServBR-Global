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
	{text = 'Please leave me alone... I have to study.'} 
}

keywordHandler:addGreetKeyword({"ashari"}, 
	{
		npcHandler = npcHandler, 
		text = "Greetings, |PLAYERNAME|."
	}
)
keywordHandler:addFarewellKeyword({"asgha thrazi"}, 
	{
		npcHandler = npcHandler, 
		text = "Good bye, |PLAYERNAME|."
	}
)

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:addModule(FocusModule:new())