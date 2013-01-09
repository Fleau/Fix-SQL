-- Fix DAILY Profession 
-- Quest Prendibili con cap di almeno 450 punti
-- Sezione Alliance
-- Quest Prendibili a Stormwind

-- Jewelcrafting see Isabel Jones Starts from WowHead
UPDATE quest_template SET RequiredSkillId = 755 WHERE entry in (25154,25156,25105,25155,25157);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (25154,25156,25105,25155,25157);

-- Fishing see Catherine Leland Starts from WowHead
UPDATE quest_template SET RequiredSkillId = 356 WHERE entry in (26488,26420,26414,26442,26536);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (26488,26420,26414,26442,26536);

-- Cooking see Robby Flay Starts from WowHead
UPDATE quest_template SET RequiredSkillId = 185 WHERE entry in (26190,26177,26192,26153,26183);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (26190,26177,26192,26153,26183);

-- Quest Prendibili a Dalaran

-- Fishing see Marcia Chase
UPDATE quest_template SET RequiredSkillId = 356 WHERE entry in (13833,13834,13836,13832,13830);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (13833,13834,13836,13832,13830);

-- Cooking see Katherine Lee
UPDATE quest_template SET RequiredSkillId = 185 WHERE entry in (13101,13103,13100,13107,13102);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (13101,13103,13100,13107,13102);

-- Jewelcrafting Daily Starter ( Timothy Jones ) è FIX

-- Sezione Horde
-- Quest Prendibili ad Orgrimmar

-- Jewelcrafting see Razgar Starts from WowHead
UPDATE quest_template SET RequiredSkillId = 755 WHERE entry in (25162,25158,25160,25161,25159);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (25162,25158,25160,25161,25159);

-- Fishing see Marith Lazuria Starts from WowHead
UPDATE quest_template SET RequiredSkillId = 356 WHERE entry in (26588,26572,26557,26543,26556);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (26588,26572,26557,26543,26556);

-- Cooking see Marogg Starts from WowHead
UPDATE quest_template SET RequiredSkillId = 185 WHERE entry in (26227,26226,26235,26220,26233,26234);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (26227,26226,26235,26220,26233,26234);

-- Quest Prendibili a Dalaran 

-- Cooking see Awilo Lon'Gomba
UPDATE quest_template SET RequiredSkillId = 185 WHERE entry in (13114,13116,13112,13113,13115);
UPDATE quest_template SET RequiredSkillPoints = 450 WHERE entry in (13114,13116,13112,13113,13115);

-- Correction on some little bugs on some Jewelcrafting quests
-- If offylike, or just replace ReqSpellCast1 = 0 
UPDATE quest_template SET ReqSpellCast1 = 39221, ReqCreatureOrGoId1=0 WHERE entry in (25105,25158);
UPDATE quest_template SET ReqSpellCast1 = 39222, ReqCreatureOrGoId1=0 WHERE entry in (25104,25160);
UPDATE quest_template SET ReqSpellCast1 = 39223, ReqCreatureOrGoId1=0 WHERE entry in (25155,25161);
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,ErrorTextId,ScriptName,`Comment`) VALUES
(13,0,55960,0,1,39221,0,NULL,"To check if a player with jc is creating an item"),
(13,0,55960,0,2,39222,0,NULL,"To check if a player with jc is creating an item"),
(13,0,55960,0,3,39223,0,NULL,"To check if a player with jc is creating an item");


