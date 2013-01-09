/* Fix World Events
 Procedure : creature - objects - achievements
 This complete fix works only on DarkCore DB v0.7
 by LuKe92
 Done : Feast of Winter Veil, Lunar Festival, Day of the Dead, Pirate's Day, Love Is in the Air, Midsummer Fire Festival, Children's Week, Brewfest ( almost done by thema89 XD )
 ToDo : Noblegarden, Hallow's End, Pilgrim's Bounty, Harvest Festival, Fireworks Spectacular
*/ 


-- Feast of Winter Veil 

 DELETE * FROM game_event_creature WHERE event=2;
  
 DELETE * FROM game_event_creature_quest WHERE event=2;
 
 INSERT INTO game_event_creature_quest( id,quest,event ) VALUES
 (9550,6964,2),
 (1365,7062,2),
 (13444,7025,2),
 (13445,6962,2),
 (2916,7063,2),
 (13418,6984,2),
 (13418,6961,2),
 (13418,8799,2),
 (13418,6983,2),
 (13435,7023,2),
 (15664,7043,2),
 (15664,6983,2),
 (13417,7061,2),
 (13636,6983,2),
 (13636,7043,2),
 (13431,7021,2),
 (23010,7023,2),
 (13433,7045,2),
 (13433,7022,2),
 (13433,7043,2),
 (13433,8763,2);
 
 --6983 
 UPDATE quest_template 
   SET ReqCreatureOrGoId1=15664, 
       ReqCreatureOrGoCount1=102760,
       Objectives='Recover the Stolen Treats and free Metzen the Reindeer after defeating the Abominable Greench, who is hiding out near Growless Cave in the Hillsbrad Foothills. '
     Details='A creature called The Abominable Greench stole our shipment of treats, $N. Be careful though! He is vicious and a bunch of those little green gnomes do his bidding!$n You are gonna need some help in facing him. Rumor has it he is holding our treats and our beloved Metzen the Reindeer at Growless Cave in the Hillsbrad Foothills! Find the treats $N and bring them back before the celebration is ruined and all the children of Ogrimmar are disappointed! '
	WHERE entry=6983; 

--7043	
UPDATE quest_template 
   SET ReqCreatureOrGoId1=15664, 
       ReqCreatureOrGoCount1=102760,
       Objectives='Recover the Stolen Treats and free Metzen the Reindeer after defeating the Abominable Greench, who is hiding out near Growless Cave in the Hillsbrad Foothills. '
	   Details='A creature called The Abominable Greench stole our shipment of treats, $N. Be careful though! He is vicious and a bunch of those little green gnomes do his bidding! You are gonna need some help in facing him. Rumor has it he is holding our treats and our beloved Metzen the Reindeer at Growless Cave in the Hillsbrad Foothills! Find the treats $N and bring them back before the celebration is ruined and all the children of Stormwind are disappointed! '
	WHERE entry=7043;

--8763
UPDATE quest_template
   SET QuestFlags=262144
    WHERE entry=8763;
	

-- the rest of the event seems to be fixed.
-- end winter veil

-- Lunar Festival
DELETE * FROM game_event_creature WHERE event=7;

DELETE * FROM game_event_creature_quest WHERE event=7;

INSERT INTO game_event_creature_quest( id,quest,event ) VALUES
(30364,13033,7), -- Elder Arp
(30357,13013,7), -- Elder Beldak
(15563,8647,7), -- Elder Bellowrage
(15595,8715,7), -- Elder Bladeleaf
(15599,8719,7), -- Elder Bladesing
(15598,8718,7), -- Elder Bladeswift
(15575,8673,7), -- Elder Bloodhoof
(30368,13026,7), -- Elder Bluewolf
(15606,8726,7), -- Elder Brightspear
(15871,8866,7), -- Elder Bronzebeard
(30538,13067,7), -- Elder Chogan'gada
(15564,8648,7), -- Elder Darkcore
(15579,8677,7), -- Elder Darkhorn
(15585,8683,7), -- Elder Dawnstrider
(15586,8684,7), -- Elder Dreamseer
(15580,8678,7), -- Elder Ezra Wheathoof
(30359,13015,7), -- Elder Fargal
(15607,8727,7), -- Elder Farwhisper
(15569,8653,7), -- Elder Goldwell
(15568,8652,7), -- Elder Graveborn
(30370,13028,7), -- Elder Graymane
(15581,8679,7), -- Elder Grimtotem
(15562,8646,7), -- Elder Hammershout
(15588,8686,7), -- Elder High Mountain
(15559,8643,7), -- Elder Highpeak
(30536,13021,7), -- Elder Igasho
(15567,8651,7), -- Elder Ironband
(30531,13017,7), -- Elder Jarten
(30534,13023,7), -- Elder Kilias
(30367,13025,7), -- Elder Lunaro
(15602,8722,7), -- Elder Meadowrun
(15587,8685,7), -- Elder Mistwalker
(15594,8714,7), -- Elder Moonstrike
(15597,8717,7), -- Elder Moonwarden
(15549,8619,7), -- Elder Morndeep
(15604,8724,7), -- Elder Morningdew
(30358,13014,7), -- Elder Morthie
(30374,13032,7), -- Elder Muraco
(15603,8723,7), -- Elder Nightwind
(30360,13016,7), -- Elder Northal
(30533,13022,7), -- Elder Nurgen
(15561,8645,7), -- Elder Obsidian
(30537,13065,7), -- Elder Ohanzee
(30371,13029,7), -- Elder Pamuya
(15570,8654,7), -- Elder Primestone
(15573,8671,7), -- Elder Ragetotem
(15605,8725,7), -- Elder Riversong
(15557,8636,7), -- Elder Rumblerock
(15572,8670,7), -- Elder Runetotem
(30362,13018,7), -- Elder Sandrene
(30348,13012,7), -- Elder Sardis
(15558,8642,7), -- Elder Silvervein
(15577,8675,7), -- Elder Skychaser
(15600,8720,7), -- Elder Skygleam
(15584,8682,7), -- Elder Skyseer
(30373,13031,7), -- Elder Skywarden
(15566,8650,7), -- Elder Snowcrown
(15556,8635,7), -- Elder Splitrock
(15593,8713,7), -- Elder Starsong
(15601,8721,7), -- Elder Starweave
(30375,13020,7), -- Elder Stonebeard
(15560,8644,7), -- Elder Stonefort
(15574,8672,7), -- Elder Stonespire
(15565,8649,7), -- Elder Stormbrow
(30369,13027,7), -- Elder Tauros
(30363,13019,7), -- Elder Thoim
(15583,8681,7), -- Elder Thunderhorn
(30365,13024,7), -- Elder Wanikaya
(30372,13030,7), -- Elder Whurain
(15578,8676,7), -- Elder Wildmane
(15592,8688,7), -- Elder Windrun
(15582,8680,7), -- Elder Windtotem
(30535,13066,7), -- Elder Yurauk
(15895,8867,7), -- Lunar Festival Harbinger
(15895,8870,7),
(15895,8871,7),
(15895,8872,7),
(15895,8873,7),
(15895,8874,7),
(15895,8875,7),
(15864,8868,7), -- Valadar Starsong <Coin of Ancestry Collector>
(15864,8883,7); 

-- quest_template assenti per lunar festival. starts here
--starting from the elder, end with the others

INSERT INTO quest_template (entry, Method, MinLevel, MaxLevel, QuestLevel, QuestFlags, Title, CompletedText, RewItemId1, RewItemId2, RewItemCount1, RewItemCount2, RewRepFaction1, RewRepValue1, RewMoneyMaxLevel, RewSpell ) VALUES 
(13033,0,1,0,1,0,"Arp the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(13013,0,1,0,1,0,"Beldak the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8715,0,1,0,1,0,"Bladeleaf the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8647,0,1,0,1,0,"Bellowrage the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8719,0,1,0,1,0,"Bladesing the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8718,0,1,0,1,0,"Bladeswift the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8673,0,1,0,1,0,"Bloodhoof the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(13026,0,1,0,1,0,"Bluewolf the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8726,0,1,0,1,0,"Brightspear the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8866,0,1,0,1,0,"Bronzebeard the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13067,0,1,0,1,0,"Chogan'gada the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8648,0,1,0,1,0,"Darkcore the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(29736,0,1,0,1,0,"Darkfeather the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8677,0,1,0,1,0,"Darkhorn the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8683,0,1,0,1,0,"Dawnstrider the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(29734,0,1,0,1,0,"Deepforge the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8684,0,1,0,1,0,"Dreamseer the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(29740,0,1,0,1,0,"Evershade the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(13015,0,1,0,1,0,"Fargal the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8727,0,1,0,1,0,"Farwhisper the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(29737,0,1,0,1,0,"Firebeard the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8653,0,1,0,1,0,"Goldwell the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8652,0,1,0,1,0,"Graveborn the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13028,0,1,0,1,0,"Graymane the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8679,0,1,0,1,0,"Grimtotem the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8646,0,1,0,1,0,"Hammershout the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8686,0,1,0,1,0,"High Mountain the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8643,0,1,0,1,0,"Highpeak the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13021,0,1,0,1,0,"Igasho the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8651,0,1,0,1,0,"Ironband the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13017,0,1,0,1,0,"Jarten the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13023,0,1,0,1,0,"Kilias the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13025,0,1,0,1,0,"Lunaro the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8722,0,1,0,1,0,"Meadowrun the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(29742,0,1,0,1,0,"Menkaf the Elder","All tol'vir were once as I am. Now, my people are flesh and blood, and more in need of the wisdom of the ages than ever before. ",21100,21746,1,1,189,75,82700,25716),
(8685,0,1,0,1,0,"Mistwalker the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token...  ",21100,21746,1,1,189,75,82700,25716),
(29738,0,1,0,1,0,"Moonlance the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8714,0,1,0,1,0,"Moonstrike the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8717,0,1,0,1,0,"Moonwarden the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8619,0,1,0,1,0,"Moondeep the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8724,0,1,0,1,0,"Morningdew the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(13014,0,1,0,1,0,"Morthie the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13032,0,1,0,1,0,"Muraco the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8723,0,1,0,1,0,"Nightwind the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13016,0,1,0,1,0,"Northal the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13022,0,1,0,1,0,"Nurgen the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8645,0,1,0,1,0,"Obsidian the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13065,0,1,0,1,0,"Ohanzee the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13029,0,1,0,1,0,"Pamuya the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8654,0,1,0,1,0,"Primestone the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8671,0,1,0,1,0,"Ragetotem the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8725,0,1,0,1,0,"Riversong the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8636,0,1,0,1,0,"Rumblerock the Elder","The stuff of life is doomed to die and return to the earth, but the stuff of spirit lives eternal.  I bid you well, $N, and offer you this token...  ",21100,21746,1,1,189,75,82700,25716),
(8670,0,1,0,1,0,"Runetotem the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(13018,0,1,0,1,0,"Sandrene the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13012,0,1,0,1,0,"Sardis the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(29741,0,1,0,1,0,"Sekhemi the Elder","All tol'vir were once as I am. Now, my people are flesh and blood, and more in need of the wisdom of the ages than ever before.  ",21100,21746,1,1,189,75,82700,25716),
(8642,0,1,0,1,0,"Silvervein the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8675,0,1,0,1,0,"Skychaser the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8720,0,1,0,1,0,"Skygleam the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8682,0,1,0,1,0,"Skyseer the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(13031,0,1,0,1,0,"Skywarden the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8650,0,1,0,1,0,"Snowcrown the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8635,0,1,0,1,0,"Splitrock the Elder","The battles of ages past are seeds from which legends grow.  Yours is a time of heroes, young one.  May your legend take root, thrive.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8716,0,1,0,1,0,"Starglade the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8713,0,1,0,1,0,"Starsong the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8721,0,1,0,1,0,"Starweave the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(13020,0,1,0,1,0,"Stonebeard the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(29735,0,1,0,1,0,"Stonebrand the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8644,0,1,0,1,0,"Stonefort the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(8672,0,1,0,1,0,"Stonespire the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8649,0,1,0,1,0,"Stormbrow the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13027,0,1,0,1,0,"Tauros the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8681,0,1,0,1,0,"Thunderhorn the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(13019,0,1,0,1,0,"Thoim the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716),
(13024,0,1,0,1,0,"Wanikaya the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8678,0,1,0,1,0,"Wheathoof the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(13030,0,1,0,1,0,"Whurain the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8676,0,1,0,1,0,"Wildmane the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8688,0,1,0,1,0,"Windrun the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(29739,0,1,0,1,0,"Windsong the Elder","The heavens, in their countless stars, hold answers to earthly mysteries, $N.  Might, then, the wise, and the lucky, gaze up and find truth? ",21100,21746,1,1,189,75,82700,25716),
(8680,0,1,0,1,0,"Windtotem the Elder","Your spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(8674,0,1,0,1,0,"Winterhoof the Elder","IYour spirit burns with life, young $c.  I accept the homage you pay, and offer in return this token... ",21100,21746,1,1,189,75,82700,25716),
(13066,0,1,0,1,0,"Yurauk the Elder","It is good to know the people of this land still pay homage to the olden races.  I bid you well, $N, and offer you this token... ",21100,21746,1,1,189,75,82700,25716);

INSERT INTO quest_template (entry, Method, MinLevel, MaxLevel, QuestLevel, QuestFlags, Title, Details, Objectives, CompletedText, RewItemId1, RewItemId2, RewItemId3, RewItemCount1, RewItemCount2, RewItemCount3, RewRepFaction1, RewRepValue1, RewMoneyMaxLevel) VALUES 
(8868,0,1,0,1,0,"Elune's Blessing","The beast Omen was once a hero of this world. A wolf of great strength and fortune, Omen fought beside the heroes of the War of the Ancients until he succumbed to demonic magics. Turning against his allies, he raged across Azeroth and carried death and terror in his wake. Finally defeated here, in Moonglade, Omen now sleeps among the silt of Lake Elune'ara. But each new year, during the festival, he stirs... Gather cohorts, $N, and summon and defeat the beast Omen. Earn the blessing of Elune! ","Summon Omen, defeat him and gain Elune's Blessing. Return to Valadar Starsong in Nighthaven. Receive Elune's Blessing.","Very well done, $N. Defeating Omen sent his spirit back to the waters of Elune'ara.  Although the beast himself is blessed by Elune and so cannot die, his anger will subside for another year. Your victory is a celebration, $N--a celebration of the might of Omen, of you and your allies, and of the peace you have given this tragic hero of our past. ",21540,21640,7912,1,1,3,609,250,165400);

-- end lunar festival

-- pirate's day seems to be fixed

-- Fireworks Spectacular need a core check for the show at booty bay

-- Day of the Dead
-- fixing starts here

UPDATE creature_template 
  SET AIName = "SmartAI"
    WHERE entry=34383;

UPDATE creature_template 
  SET AIName = "SmartAI"
    WHERE entry=34383;
	
INSERT INTO smart_script (entryorguid,id,event_type,event_phase_mask,event_chance,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,target_type,comment) VALUES
(34383,0,22,0,100,10,0,0,0,11,65386,1,7,"Catrina - On select and /dance - cast Honor the Dead");
	
-- end day of the dead

-- Love Is in the air
-- fixing starts here

DELETE * FROM game_event_creature_quest WHERE event=8;

INSERT INTO game_event_creature_quest (id, quest,event ) VALUES
(37172,24576,8),
(37172,24638,8),
(37172,24645,8),
(37172,24647,8),
(37172,24648,8),
(37172,24649,8),
(37172,24650,8),
(37172,24651,8),
(37172,24652,8),
(37172,28935,8),
(37172,24541,8),
(37172,24850,8),
(37172,24536,8),
(38295,24805,8),
(38042,24612,8),
(38043,24615,8),
(38044,24614,8),
(38045,24613,8),
(37675,24635,8),
(37675,24629,8),
(37675,24636,8),
(38328,24576,8),
(38328,24851,8);

INSERT INTO quest_template (entry,Method,ZoneOrSort,SkillOrClassMask,MinLevel,MaxLevel,QuestLevel,TYPE,RequiredRaces,RequiredSkillValue,RepObjectiveFaction,RepObjectiveValue,RepObjectiveFaction2,RepObjectiveValue2,RequiredMinRepFaction,RequiredMinRepValue,RequiredMaxRepFaction,RequiredMaxRepValue,SuggestedPlayers,LimitTime,QuestFlags,SpecialFlags,CharTitleId,PlayersSlain,BonusTalents,RewardArenaPoints,PrevQuestId,NextQuestId,ExclusiveGroup,NextQuestInChain,RewXPId,SrcItemId,SrcItemCount,SrcSpell,Title,Details,Objectives,OfferRewardText,RequestItemsText,EndText,CompletedText,ObjectiveText1,ObjectiveText2,ObjectiveText3,ObjectiveText4,ReqItemId1,ReqItemId2,ReqItemId3,ReqItemId4,ReqItemId5,ReqItemId6,ReqItemCount1,ReqItemCount2,ReqItemCount3,ReqItemCount4,ReqItemCount5,ReqItemCount6,ReqSourceId1,ReqSourceId2,ReqSourceId3,ReqSourceId4,ReqSourceCount1,ReqSourceCount2,ReqSourceCount3,ReqSourceCount4,ReqCreatureOrGOId1,ReqCreatureOrGOId2,ReqCreatureOrGOId3,ReqCreatureOrGOId4,ReqCreatureOrGOCount1,ReqCreatureOrGOCount2,ReqCreatureOrGOCount3,ReqCreatureOrGOCount4,ReqSpellCast1,ReqSpellCast2,ReqSpellCast3,ReqSpellCast4,RewChoiceItemId1,RewChoiceItemId2,RewChoiceItemId3,RewChoiceItemId4,RewChoiceItemId5,RewChoiceItemId6,RewChoiceItemCount1,RewChoiceItemCount2,RewChoiceItemCount3,RewChoiceItemCount4,RewChoiceItemCount5,RewChoiceItemCount6,RewItemId1,RewItemId2,RewItemId3,RewItemId4,RewItemCount1,RewItemCount2,RewItemCount3,RewItemCount4,RewRepFaction1,RewRepFaction2,RewRepFaction3,RewRepFaction4,RewRepFaction5,RewRepValueId1,RewRepValueId2,RewRepValueId3,RewRepValueId4,RewRepValueId5,RewRepValue1,RewRepValue2,RewRepValue3,RewRepValue4,RewRepValue5,RewHonorAddition,RewHonorMultiplier,unk0,RewOrReqMoney,RewMoneyMaxLevel,RewSpell,RewSpellCast,RewMailTemplateId,RewMailDelaySecs,PointMapId,PointX,PointY,PointOpt,DetailsEmote1,DetailsEmote2,DetailsEmote3,DetailsEmote4,DetailsEmoteDelay1,DetailsEmoteDelay2,DetailsEmoteDelay3,DetailsEmoteDelay4,IncompleteEmote,CompleteEmote,OfferRewardEmote1,OfferRewardEmote2,OfferRewardEmote3,OfferRewardEmote4,OfferRewardEmoteDelay1,OfferRewardEmoteDelay2,OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,RewSkillLineId,RewSkillPoints,RewRepMask,QuestGiverPortrait,QuestTurnInPortrait,RewCurrencyId1,RewCurrencyCount1,RewCurrencyId2,RewCurrencyCount2,RewCurrencyId3,RewCurrencyCount3,RewCurrencyId4,RewCurrencyCount4,ReqCurrencyId1,ReqCurrencyCount1,ReqCurrencyId2,ReqCurrencyCount2,ReqCurrencyId3,ReqCurrencyCount3,ReqCurrencyId4,ReqCurrencyCount4,QuestGiverPortraitText,QuestGiverPortraitUnk,QuestTurnInPortraitText,QuestTurnInPortraitUnk,QuestTargetMark,QuestStartType,SoundAccept,SoundTurnIn,RequiredSpell,StartScript,CompleteScript,WDBVerified) VALUES 
(28935,2,-376,0,5,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,1,0,0,0,0,0,0,0,0,5,50130,1,0,"Crushing the Crown","This ledger is full of locations, and I need you to investigate and take action, pal. This has gone on long enough.$b$bHere's an entry I want you to check out: it looks like it's in Uldum, east of the Tomb of Khartut and near the entrance from Tanaris. Get out there and rough 'em up.$b$bOh, and if you see something big and dangerous enough that it needs destroying, toss this bomb at it.","Kill 5 Crown Technicians and use Snagglebolt's Khorium Bomb to destroy one chemical wagon east of the Tomb of Khartut in Uldum, then return to Detective Snap Snagglebolt in Orgrimmar. ","\N	\N	Return to Detective Snap Snagglebolt in Orgrimmar's Valley of Strength.","Chemical Wagon Destroyed",0,0,0,0,0,0,0,0,0,0,0,0,50130,0,0,0,1,0,0,0,38035,37214,0,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49927,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,50,9300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,890,878,0,0,0,1);

INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount) VALUES 
(36296,49927,2,1,0,10,10),
(36296,50320,25,1,0,2,1),
(36272,49927,0.1,1,0,10,10);

--manca extendedcost da estrarre valore da ItemExtendedCost.dbc 
/*
INSERT INTO npc_vendor ( entry, slot,item,maxcount,incrtime,ExtendedCost ) VALUES 
(37674,0,72146,0,0,); 
 ^ da addare nella patch 4.3.0*/
 
 -- fine love is in the air
 
 -- Midsummer Fire Festival
 -- fixing starts here
 
 DELETE * FROM game_event_creature_quest WHERE event =1;
 
 INSERT INTO game_event_creature_quest ( id, quest, event) VALUES 
 (25923,11840,1),
 (25887,11804,1),
 (25884,11841,1),
 (25883,11805,1),
 (25888,11806,1),
 (25925,11842,1),
 (25926,11843,1),
 (25889,11807,1),
 (25890,11808,1),
 (25891,11809,1),
 (25927,11844,1),
 (25892,11810,1),
 (25920,11837,1),
 (25915,11832,1),
 (25893,11811,1),
 (25928,11845,1),
 (25894,11812,1),
 (25895,11813,1),
 (25929,11846,1),
 (25896,11814,1),
 (25930,11847,1),
 (25897,11815,1),
 (26221,11954,1),
 (26221,11917,1),
 (26221,11947,1),
 (26221,11948,1),
 (26221,11952,1),
 (26221,11953,1),
 (26221,11886,1),
 (25324,11891,1),
 (25324,12012,1),
 --(25324,29092,1), added in patch 4.1.0
 (25898,11816,1),
 (25931,11848,1),
 (25932,11849,1),
 (25899,11817,1),
 (16817,9365,1),
 (16817,11964,1),
 (16818,9339,1),
 (16818,11966,1),
 (25962,11882,1),
 (25933,11850,1),
 (25934,11851,1),
 (25900,11818,1),
 (25935,11853,1),
 (25902,11820,1),
 (25975,11924,1),
 (25975,11921,1),
 (25975,11657,1),
 (25975,11731,1),
 (26113,11925,1),
 (26113,11926,1),
 (26113,11923,1),
 (26113,11922,1),
 (25936,11852,1),
 (25937,11821,1),
 (25937,11854,1),
 (25918,11835,1),
 (25904,11822,1),
 (25938,11855,1),
 (25919,11836,1),
 (25914,11831,1),
 (25939,11584,1),
 (25940,11856,1),
 (25941,11857,1),
 (25921,11838,1),
 (25916,11833,1),
 (25906,11824,1),
 (25942,11858,1),
 (25907,11825,1),
 (25944,11860,1),
 (25908,11826,1),
 (25943,11859,1),
 (25946,11862,1),
 (25909,11827,1),
 (25910,11583,1),
 (25911,11828,1),
 (25922,11839,1),
 (25917,11834,1),
 (25912,11829,1);
 
 -- vendor mancante di un item : fixing here
 INSERT INTO npc_vendor ( entry, slot, item, maxcount, incrtime, ExtendedCost ) VALUES 
 (26123,0,34599,0,0,2349);
 (26124,0,34599,0,0,2349);
 -- estrarre il valore dei burning blossom come metodo di pagamento ( 5 per uno )
 
 -- all quest entries already inside db
 
 -- end midsummer fire festival
 
 -- Childre's Week
 -- fixing starts here
 
 -- missing only 2 quest, adding here
INSERT INTO quest_template ( entry, Method, MinLevel, MaxLevel, SrcItemId, SrcItemCount, Title, Details, Objectives, CompletedText, ReqItemId1, ReqItemCount1, ReqSpellCast1) VALUES
(13938,),
(13937,);
