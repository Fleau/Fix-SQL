
-- ############ --
-- #GRIM BATOL# --
-- ############ --

-- TODO: AI dei boss, controllare trash mob e loro loot, controllare i creature_template normal dei boss e fare da 0 quelli heroic

-- Fix loot, chance loot and group loot for Grim Batol (Normal + Heroic)
DELETE FROM creature_loot_template WHERE entry IN
(
39625,  -- General Umbriss N
48337,	-- General Umbriss H
40177,	-- Forgemaster Throngus N
48702,	-- Forgemaster Throngus H
40319,	-- Drahga Shadowburner N
48784,	-- Drahga Shadowburner H
40484,	-- Erudax N
48822	-- Erudax H
);

INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid) VALUES
-- Umbriss Normal
(39625, 56112, 0, 1, 1), 
(39625, 56113, 0, 1, 1),
(39625, 56114, 0, 1, 1),
(39625, 56115, 0, 1, 1),
(39625, 56116, 0, 1, 1),
-- Umbriss Heroic
(48337, 56440, 0, 1, 1),
(48337, 56441, 0, 1, 1),
(48337, 56442, 0, 1, 1),
(48337, 56443, 0, 1, 1),
(48337, 56444, 0, 1, 1),
(48337, 71715, -1, 1, 0),
-- Throngus Normal
(40177, 56118, 0, 1, 1),
(40177, 56119, 0, 1, 1),
(40177, 56120, 0, 1, 1),
(40177, 56121, 0, 1, 1),
(40177, 56122, 0, 1, 1),
(40177, 71638, -1, 1, 0),
-- Throngus Heroic
(48702, 56445, 0, 1, 1),
(48702, 56446, 0, 1, 1),
(48702, 56447, 0, 1, 1),
(48702, 56448, 0, 1, 1),
(48702, 56449, 0, 1, 1),
-- Drahga Normal
(40319, 56126, 20, 1, 1),
(40319, 56123, 15, 1, 1),
(40319, 56127, 15, 1, 1),
(40319, 56125, 10, 1, 1),
(40319, 56124, 10, 1, 1),
(40319, 66927, 35, 1, 0),
(40319, 21525, 15, 1, 0),
(40319, 22206, 5, 1, 0),
-- Drahga Heroic
(48784, 56450, 20, 1, 1),
(48784, 56453, 20, 1, 1),
(48784, 56452, 20, 1, 1),
(48784, 56451, 20, 1, 1),
(48784, 56454, 20, 1, 1),
(48784, 21525, 15, 1, 0),
(48784, 66927, 10, 1, 0),
(48784, 22206, 5, 1, 0),
-- Erudax Normal
(40484, 56135, 10, 1, 1),
(40484, 56128, 15, 1, 1),
(40484, 56130, 15, 1, 1),
(40484, 56133, 15, 1, 1),
(40484, 56129, 15, 1, 1),
(40484, 56136, 20, 1, 1),
(40484, 56132, 20, 1, 1),
(40484, 56138, 20, 1, 1),
(40484, 56131, 25, 1, 1),
(40484, 56137, 25, 1, 1),
-- Erudax Heroic 
(48822, 52078, 100, 1, 1),
(48822, 56457, 20, 1, 1),
(48822, 56463, 20, 1, 1),
(48822, 56456, 20, 1, 1),
(48822, 56464, 20, 1, 1),
(48822, 56460, 20, 1, 1),
(48822, 56462, 20, 1, 1),
(48822, 56459, 20, 1, 1),
(48822, 56458, 20, 1, 1),
(48822, 56461, 20, 1, 1),
(48822, 56455, 20, 1, 1),

/* 
 start loot mob : seguo per le entry date dal link di wowhead
 
 terza colonna : (percentuale drop)? quarta e quinta : (fisse)? 
			 ho controllato sulla wiki e dovrebbero essere così di default 
			 
 inserimento solo categorie con react AH rosse (attaccano orda e ally secondo wowhead)
			 e con loot 
 */

-- Ascended Flameseeker
(39415,53010,43,1,1),
(39415,68198,15,1,1),
(39415,58268,7,1,1),
(39415,52506,5,1,1),
(39415,68197,5,1,1),
(39415,58256,4,1,1),

-- Ascended Rockbreaker
(40272,53010,43,1,1),
(40272,68198,15,1,1),
(40272,58268,7,1,1),
(40272,52506,5,1,1),
(40272,68197,5,1,1),
(40272,58256,4,1,1),

-- Ascended Waterlasher
(40273,53010,43,1,1),
(40273,68198,15,1,1),
(40273,58268,7,1,1),
(40273,52506,5,1,1),
(40273,68197,5,1,1),
(40273,58256,4,1,1),

-- Ascended Windwalker
(39414,53010,43,1,1),
(39414,68198,15,1,1),
(39414,58268,7,1,1),
(39414,52506,5,1,1),
(39414,68197,5,1,1),
(39414,58256,4,1,1),

-- Enslaved Gronn Brute
(40166,53010,43,1,1),
(40166,68198,15,1,1),
(40166,58268,7,1,1),
(40166,52506,5,1,1),
(40166,58256,4,1,1),

-- Twilight Beguiler <The Twilight's Hammer>
(40167,53010,43,1,1),
(40167,68198,15,1,1),
(40167,58268,7,1,1),
(40167,52506,5,1,1),
(40167,58256,4,1,1),

-- Twilight Drake
(41095,67495,3,1,1),

-- Twilight Wyrmcaller <The Twilight's Hammer>
(39873,53010,42,1,1),
(39873,68198,14,1,1),
(39873,58268,7,1,1),
(39873,52506,5,1,1),
(39873,68197,3,1,1),
(39873,58256,4,1,1);

-- end loot mob

/* 
 start creature template boss
 killcredit = si può riferire agli achievements ? lascio questa parte  
*/
DELETE FROM creature_template WHERE entry IN (48337,48702,48784,48822);

INSERT INTO creature_template (entry, difficulty_entry_1, name, subname, IconName, minlevel, maxlevel, 'rank', 
            mindmg, maxdmg, dmgschool, unit_class, unit_flags, 'type', lootid, mingold, maxgold, MovementType, 
			InhabitType, mechanic_immune_mask) VALUES 

-- Umbriss Heroic ( da definire i danni e la school, skinnabile?,  
-- unit_flags = disarmabile e silenziabile <-- da confrontare con mechanic_immune_mask =horror,knockout,poly,pacify,sleep,fear,charm,disorient  
(48337,5,'General Umbriss','Servant of Deathwing','Attack',87,87,3,,,,1,8192+2097152,2,48337, 10002, 40010, 0, 1, 8192+8388608+65536+128+512+16+1+2 ),


--Throngus Heroic ( le spell applicabili le definisco uguali a umbriss XD )
(48702,5,'Forgemaster Throngus',null,'Attack',87,87,3,,,,1,8192+2097152,5,48702,9998,39994,0,1,8192+8388608+65536+128+512+16+1+2),

--Drahga Shadowburner Heroic ( impostata con unit_class = 2 ( paladino -> più health che mana )
-- unit_flags = silenziabile e stunnabile, immune da charm,disorient,fear,pacify,sleeppoly,horror
(48784,5,'Drahga Shadowburner','Twilights Hammer Courier','Attack',87,87,3,,,,2,8192+262144,7,48784,10013,40054,0,1,1+2+16+128+512+65536+8388608),

-- Erudax Hero ( uguale a umbriss )
(48822,5,'Erudax','The Duke of Below','Attack',87,87,3,,,,1,8192+2097152,0,48822,10001,40006,0,1,8192+8388608+65536+128+512+16+1+2);

