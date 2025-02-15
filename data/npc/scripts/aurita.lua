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
	{ text = "Sometimes it would be nice to have legs." },
	{ text = "Oh, Taegen ... *sigh*" },
	{ text = "I'd like to take a walk on the beach." }
}

npcHandler:addModule(VoiceModule:new(voices))
npcHandler:addModule(FocusModule:new())
