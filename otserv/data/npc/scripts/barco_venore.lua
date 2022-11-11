--------------------By Jpkulik!---------------------------- 
local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 



-- OTServ event handling functions start 
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end 
-- Set the greeting message. 
npcHandler:setMessage(MESSAGE_GREET, HelloText) 
function onThink()                         npcHandler:onThink() end 
-- OTServ event handling functions end 
local function creatureSayCallback(cid, type, msg)
	
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	
	if (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to')) then
        local storageExhaust = 5555
        if exhaustion.get(cid, storageExhaust) then
            return true
        end
        exhaustion.set(cid, storageExhaust, 2) -- 2 seconds
    end
	if (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'darashia') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 60) == TRUE then
		doTeleportThing(cid,{x=33290, y=32481, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'ankrahmun') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 150) == TRUE then
		doTeleportThing(cid,{x=33092, y=32884, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'ab\'dendriel') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 90) == TRUE then
		doTeleportThing(cid,{x=32734, y=31669, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end	
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'yalahar') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 160) == TRUE then
		doTeleportThing(cid,{x=31359, y=31170, z=6})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'thais') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 170) == TRUE then
		doTeleportThing(cid,{x=32313, y=32212, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'carlin') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 130) == TRUE then
		doTeleportThing(cid,{x=32388, y=31821, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'port') and msgcontains(msg, 'hope') and (not npcHandler:isFocused(cid))) then
	if isPremium(cid) == TRUE then
		if doPlayerRemoveMoney(cid, 180) == TRUE then
		doTeleportThing(cid,{x=32532, y=32784, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
       end		
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'edron') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 40) == TRUE then
		doTeleportThing(cid,{x=33176, y=31764, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	end
	return true
end	
---------------------------------------MENSAGES CONFIG-------------------------------------------- 
local HelloText = 'Hello |PLAYERNAME|. Welcome to my Boat!' 
local HelpText = 'Do you need help?I can tell you some {destinations}.' 
local DestinationText = 'I can take you to {Carlin}, {Ab\'Dendriel}, {Thais}, {Venore}, {Edron}, {Darashia} and {Ankrahmun}.'            
local CitysText = 'I can take you to {Carlin}, {Ab\'Dendriel}, {Kazordoon}, {Thais}, {Venore}, {Edron}, {Darashia} and {Ankrahmun}.'  
local JobText = 'Im an Captain, and this is my Boat.'                                                                  
---------------------------------------END MENSAGES CONFIG---------------------------------------- 



---------------------------------------CARLIN CONFIG---------------------------------------------- 
local CarlinPosition = {x=32388, y=31821, z=7}              ----> Destination from Carlin Boat <---- 
local CarlinCost = 130                          ----> Cost to Travel for Carlin    <---- 
carlin = true                                            ---->TRUE:Working/FALSE:Not Working<---- 
---------------------------------------END CARLIN CONFIG------------------------------------------ 



---------------------------------------AB'DENDRIEL CONFIG----------------------------------------- 
local AbDendrielPosition = {x=32734, y=31669, z=7}     ----> Destination from Ab\'Dendriel Boat <---- 
local AbDendrielCost = 90                     ----> Cost to Travel for Ab\'Dendriel    <---- 
AbDendriel = true                                 ----> TRUE:Working/FALSE:Not Working    <---- 
---------------------------------------END AB'DENDRIEL CONFIG------------------------------------- 



---------------------------------------VENORE CONFIG---------------------------------------------- 
local VenorePosition = {x=32954, y=32022, z=7}              ----> Destination from Venore Boat <---- 
local VenoreCost = 10                          ----> Cost to Travel for Venore    <---- 
Venore = true                                          ----> TRUE:Working/FALSE:Not Working<--- 
---------------------------------------END VENORE CONFIG------------------------------------------ 



---------------------------------------THAIS CONFIG----------------------------------------------- 
local ThaisPosition = {x=32313, y=32212, z=7}                ----> Destination from Thais Boat <---- 
local ThaisCost = 170                           ----> Cost to Travel for Thais    <---- 
Thais = true                                           ---->TRUE:Working/FALSE:Not Working<--- 
---------------------------------------END THAIS CONFIG------------------------------------------- 


---------------------------------------EDRON CONFIG----------------------------------------------- 
local EdronPosition = {x=33176, y=31764, z=7}                ----> Destination from Edron Boat <---- 
local EdronCost = 40                                          ----> Cost to Travel for Edron    <---- 
Edron = true                                           ----> TRUE:Working/FALSE:Not Working<-- 
---------------------------------------END EDRON CONFIG------------------------------------------- 


---------------------------------------DARASHIA CONFIG-------------------------------------------- 
local DarashiaPosition = {x=33290, y=32481, z=7}          ----> Destination from Darashia Boat <---- 
local DarashiaCost = 60

                    ----> Cost to Travel for Darashia    <---- 
Darashia = true                                        ----> TRUE:Working/FALSE:Not Working <---- 
---------------------------------------END DARASHIA CONFIG---------------------------------------- 


---------------------------------------PORT HOPE CONFIG------------------------------------------- 
local PortHopePosition = {x=32532, y=32784, z=7}         ----> Destination from Port Hope Boat <---- 
local PortHopeCost = 160                                      ----> Cost to Travel for Port Hope    <---- 
PortHope = false                                      ----> TRUE:Working/FALSE:Not Working  <---- 
---------------------------------------END PORT HOPE CONFIG--------------------------------------- 

---------------------------------------YALAHAR CONFIG------------------------------------------- 
local YalaharPosition = {x=31359, y=31170, z=6}         ----> Destination from YALAHAR Boat <---- 
local YalaharCost = 160                                      ----> Cost to Travel for YALAHAR    <---- 
Yalahar = true                                      ----> TRUE:Working/FALSE:Not Working  <---- 
---------------------------------------END YALAHAR CONFIG--------------------------------------- 

---------------------------------------ANKRAHMUN CONFIG------------------------------------------- 
local AnkPosition = {x=33092, y=32884, z=7}              ----> Destination from Ankrahmun Boat <---- 
local AnkCost = 150                                  ----> Cost to Travel for Ankrahmun    <---- 
Ank = true                                       ----> TRUE:Working/FALSE:Not Working  <---- 
---------------------------------------END ANKRAHMUN CONFIG--------------------------------------- 


---CARLIN----------------------------------------------------------------------------------------------------------------------------------------- 
local CarlinText = 'Do you want to Travel to Carlin for 130 gold coins?' 
local CarlinTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local CarlinLvl = 8 
local CarlinPremium = false --True/false 

--Carlin-- 
if carlin == true then 
local travelNode = keywordHandler:addKeyword({'carlin'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = CarlinText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = CarlinPremium, level = CarlinLvl, cost = CarlinCost, destination = CarlinPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = CarlinTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Carlin-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 



---Venore----------------------------------------------------------------------------------------------------------------------------------------- 
local VenoreText = 'Do you want to Travel to Venore for 10 gold coins?' 
local VenoreTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local VenoreLvl = 8 
local VenorePremium = false --True/false 

--Venore-- 
if Venore == true then 
local travelNode = keywordHandler:addKeyword({'venore'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = VenoreText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = VenorePremium, level = VenoreLvl, cost = VenoreCost, destination = VenorePosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = VenoreTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Venore-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Kazordoon----------------------------------------------------------------------------------------------------------------------------------------- 
local KazordoonText = 'Do you want to Travel to Kazordoon for 10 gold coins?' 
local KazordoonTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local KazordoonLvl = 8 
local KazordoonPremium = false --True/false 

--Kazordoon-- 
if Kazordoon == true then 
local travelNode = keywordHandler:addKeyword({'kazordoon'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = KazordoonText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = KazordoonPremium, level = KazordoonLvl, cost = KazordoonCost, destination = KazordoonPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = KazordoonTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Venore-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Thais----------------------------------------------------------------------------------------------------------------------------------------- 
local ThaisText = 'Do you want to Travel to Thais for 170 gold coins?' 
local ThaisTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local ThaisLvl = 8 
local ThaisPremium = false --True/false 

--Thais-- 
if Thais == true then 
local travelNode = keywordHandler:addKeyword({'thais'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ThaisText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = ThaisPremium, level = ThaisLvl, cost = ThaisCost, destination = ThaisPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = ThaisTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Thais-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---AbDendriel----------------------------------------------------------------------------------------------------------------------------------------- 
local AbDendrielText = 'Do you want to Travel to Ab\'Dendriel for 90 gold coins?' 
local AbDendrielTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local AbDendrielLvl = 8 
local AbDendrielPremium = false --True/false 

--AbDendriel-- 
if AbDendriel == true then 
local travelNode = keywordHandler:addKeyword({'ab\'dendriel'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = AbDendrielText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = AbDendrielPremium, level = AbDendrielLvl, cost = AbDendrielCost, destination = AbDendrielPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = AbDendrielTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'ab\'dendriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End AbDendriel-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Edron----------------------------------------------------------------------------------------------------------------------------------------- 
local EdronText = 'Do you want to Travel to Edron for 40 gold coins?' 
local EdronTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local EdronLvl = 8 
local EdronPremium = false --True/false 

--Edron-- 
if Edron == true then 
local travelNode = keywordHandler:addKeyword({'edron'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = EdronText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = EdronPremium, level = EdronLvl, cost = EdronCost, destination = EdronPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = EdronTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End AbDendriel-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Darashia----------------------------------------------------------------------------------------------------------------------------------------- 
local DarashiaText = 'Do you want to Travel to Darashia for 60 gold coins?' 
local DarashiaTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local DarashiaLvl = 8 
local DarashiaPremium = false --True/false 

--Darashia-- 
if Darashia == true then 
local travelNode = keywordHandler:addKeyword({'darashia'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = DarashiaText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = DarashiaPremium, level = DarashiaLvl, cost = DarashiaCost, destination = DarashiaPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = DarashiaTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Darashia-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Port Hope----------------------------------------------------------------------------------------------------------------------------------------- 
local PortHopeText = 'Do you want to Travel to Port Hope for 160 gold coins?' 
local PortHopeTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local PortHopeLvl = 8 
local PortHopePremium = false --True/false 

--Port Hope-- 
if PortHope == true then 
local travelNode = keywordHandler:addKeyword({'port hope'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = PortHopeText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = PortHopePremium, level = PortHopeLvl, cost = PortHopeCost, destination = PortHopePosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = PortHopeTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'port hope'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Port Hope-- 

---Yalahar----------------------------------------------------------------------------------------------------------------------------------------- 
local YalaharText = 'Do you want to Travel to Yalahar for 160 gold coins?' 
local YalaharTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local YalaharLvl = 8 
local YalaharPremium = false --True/false 

--Yalahar-- 
if Yalahar == true then 
local travelNode = keywordHandler:addKeyword({'yalahar'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = YalaharText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = YalaharPremium, level = YalaharLvl, cost = YalaharCost, destination = YalaharPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = YalaharTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'yalahar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Yalahar-- 

--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Liberty Bay----------------------------------------------------------------------------------------------------------------------------------------- 
local LibertyBayText = 'Do you want to Travel to Liberty Bay for 10 gold coins?' 
local LibertyBayTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local LibertyBayLvl = 8 
local LibertyBayPremium = false --True/false 

--Liberty Bay-- 
if LibertyBay == true then 
local travelNode = keywordHandler:addKeyword({'liberty bay'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = LibertyBayText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = LibertyBayPremium, level = LibertyBayLvl, cost = LibertyBayCost, destination = LibertyBayPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = LibertyBayTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'liberty bay'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Liberty Bay-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Ankrahmun----------------------------------------------------------------------------------------------------------------------------------------- 
local AnkText = 'Do you want to Travel to Ankrahmun for 150 gold coins?' 
local AnkTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local AnkLvl = 8 
local AnkPremium = false --True/false 

--Ankrahmun-- 
if Ank == true then 
local travelNode = keywordHandler:addKeyword({'ankrahmun'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = AnkText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = AnkPremium, level = AnkLvl, cost = AnkCost, destination = AnkPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = AnkTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Ankrahmun-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Svargrond----------------------------------------------------------------------------------------------------------------------------------------- 
local SvargrondText = 'Do you want to Travel to Svargrond for 10 gold coins?' 
local SvargrondTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local SvargrondCost = 10 
local SvargrondPremium = false --True/false 

--Svargrond-- 
if Svargrond == true then 
local travelNode = keywordHandler:addKeyword({'svargrond'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = SvargrondText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = SvargrondPremium, level = SvargrondLvl, cost = SvargrondCost, destination = SvargrondPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = SvargrondTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'svargrond'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End AbDendriel-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 



keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = DestinationText }) 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = JobText }) 
keywordHandler:addKeyword({'citys'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = CityText }) 
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = HelpText }) 

-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)  
npcHandler:addModule(FocusModule:new())