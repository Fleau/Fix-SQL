/*Fix Worgen Area
  Works only on TDB 4.3.4
*/

/* Missing data in Supply Crate  */
UPDATE gameobject_template 
  SET data8 = 14094
    WHERE entry = 195306;
	
/*###########################
  # Fix Chain Quest Gilneas #
  ###########################
  */

 /*
1. All Hell Breaks Loose
   Evacuate the Merchant Square
2. Royal Orders <- this quest to be teken , needs another quest to be completed, salvaged supplies 14094
*/
UPDATE quest_template 
  SET NextQuestIdChain = 14099,
      NextQuestId = 14099,
      ExclusiveGroup = -14093
  WHERE id in (14093,14098);
  
UPDATE quest_template 
  SET ExclusiveGroup = -14093
    WHERE id = 14094;  

/*
1.Old Divisions
2.The Prison Rooftop
3.By the Skin of His Teeth
4.Brothers In Arms 
*/
UPDATE quest_template SET NextQuestIdChain = 28850 WHERE id = 14157;
UPDATE quest_template SET PrevQuestId = 14157, NextQuestIdChain = 14154 WHERE id = 28850;
UPDATE quest_template SET PrevQuestId = 28850, NextQuestIdChain = 26129 WHERE id = 14154;
UPDATE quest_template SET PrevQuestId = 14154 WHERE id = 26129;


/*
1.From the Shadows
2.Message to Greymane
3.Save Krennan Aranas
*/
UPDATE quest_template SET NextQuestIdChain = 14214 WHERE id = 14204;
UPDATE quest_template SET PrevQuestId = 14204, NextQuestIdChain = 14293 WHERE id = 14214;
UPDATE quest_template SET PrevQuestId = 14214 WHERE id = 14293;

/*
1.Sacrifices
2.By Blood and Ash
3.Never Surrender, Sometimes Retreat
4.Last Stand
*/
UPDATE quest_template SET NextQuestIdChain = 14218 WHERE id = 14212;
UPDATE quest_template SET PrevQuestId = 14212, NextQuestIdChain = 14221 WHERE id = 14218;
UPDATE quest_template SET PrevQuestId = 14218, NextQuestIdChain = 14222 WHERE id = 14221;
UPDATE quest_template SET PrevQuestId = 14221 WHERE id = 14222;

/*
1.Push Them Out
2.The Battle for Gilneas City
3.The Hunt For Sylvanas
4.Vengeance or Survival
5.Slowing the Inevitable
6.Knee-Deep
7.Laid to Rest
8.Patriarch's Blessing
9.Keel Harbor
10.They Have Allies, But So Do We
*/
UPDATE quest_template SET NextQuestIdChain = 24904 WHERE id = 24676;
UPDATE quest_template SET PrevQuestId = 24676, NextQuestIdChain = 24902 WHERE id = 24904;
UPDATE quest_template SET PrevQuestId = 24904, NextQuestIdChain = 24903 WHERE id = 24902;
UPDATE quest_template SET PrevQuestId = 24902, NextQuestIdChain = 24920 WHERE id = 24903;
UPDATE quest_template SET PrevQuestId = 24903, NextQuestIdChain = 24678 WHERE id = 24920;
UPDATE quest_template SET PrevQuestId = 24920, NextQuestIdChain = 24602 WHERE id = 24678;
UPDATE quest_template SET PrevQuestId = 24678, NextQuestIdChain = 24679 WHERE id = 24602;
UPDATE quest_template SET PrevQuestId = 24602, NextQuestIdChain = 24680 WHERE id = 24679;
UPDATE quest_template SET PrevQuestId = 24679, NextQuestIdChain = 24681 WHERE id = 24680;
UPDATE quest_template SET PrevQuestId = 24680 WHERE id = 24681;


/*
######################
# - WORGEN PHASES    #
# - FIX QUEST EVENT  #
######################
*/

/*
#################
# Worgen Phases #
#################
 59073-59074-59087-67789-68480-68481

 -Transizioni 
TRANSIZIONI :
1->2 http://www.wowwiki.com/Quest:Lockdown!
2->3 http://www.wowwiki.com/Quest:Royal_Orders
3->4 http://www.wowwiki.com/Quest:The_Rebel_Lord%27s_Arsenal <<<  debuff bite worgen spell = 72870
4->5 http://www.wowwiki.com/Quest:Save_Krennan_Aranas
5->6 http://www.wowwiki.com/Quest:Never_Surrender,_Sometimes_Retreat
6->7 http://www.wowwiki.com/Quest:Last_Chance_at_Humanity 


 Usage of SmartAI for phase swapping */

DELETE * FROM smart_scripts WHERE entryorguid IN (59073,59074,59087,67789,68480,68481,72870);

INSERT INTO smart_scripts ( entryorguid, source_type, id , link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(59073,0,0,0,20,1,100,1,14078,0,0,0,11,59073,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14078 Completition - Cast Spell 59073 - To player"),/* From Phase 1 to Phase 2 */ 
(59074,0,0,0,20,2,100,1,14099,0,0,0,11,59074,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14099 Completition - Cast Spell 59074 - To player"),/* From Phase 2 to Phase 3 */
(59087,0,0,0,20,3,100,1,14159,0,0,0,11,59087,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14159 Completition - Cast Spell 59087 - To player"),/* From Phase 3 to Phase 4 */
(72870,0,0,0,4,3,100,1,0,0,0,0,11,72870,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Creature Aggro - Apply Debuff 72870 - To Player"),/* Worgen Bite Debuff, Need Better Implementation to be Blizzlike*/
(67789,0,0,0,20,4,100,1,14293,0,0,0,11,67789,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14293 Completition - Cast Spell 67789 - To player"),/* From Phase 4 to Phase 5 */
(68480,0,0,0,20,5,100,1,14221,0,0,0,11,68480,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14221 Completition - Cast Spell 68480 - To player"),/* From Phase 5 to Phase 6 */
(68481,0,0,0,20,1,100,1,14375,0,0,0,11,68481,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14375 Completition - Cast Spell 68481 - To player");/* From Phase 6 to Phase 7 ( DE LAST UAN XDDD ) */ 

/*
###################
# Fix Quest Event #
###################
*/

/* Evento By The Skin of His Teeth */
DELETE * FROM smart_scripts WHERE entryorguid IN (62218,68221,68219);

/* Applying Buff to Player on Quest Accepting ( 2 minutes timer, rewarding quest 14154 completition )*/
INSERT INTO smart_scripts ( entryorguid, source_type, id , link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(68218,0,0,0,19,1,100,1,14154,0,0,0,11,68218,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14154 Accepting - Cast Spell 62218 - To player");
/* TODO : spawn dei mob : spell=66849,spell=66925 */


/* Save Krennan Arenas */

/*TODO : auto-mounting of players*/

/* Summon King Greymane's Horse */
INSERT INTO smart_scripts ( entryorguid, source_type, id , link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(68221,0,0,0,19,1,100,1,14293,0,0,0,11,68221,16,0,0,0,0,1,0,0,0,0,0,0,0,"On Quest 14293 Accepting - Cast Spell 68221 - To player");

/* Set King Greymane's Horse as vehicle */
DELETE * FROM vehicle_template_accessory WHERE entry = 35905;

INSERT INTO vehicle_template_accessory ( entry, accessory_entry, seat_id, minion, description, summontype, summontimer) VALUES 
(35095,0,0,1,"King Greymane's Horse used as vehicle",1,0);

UPDATE creature_template 
  SET MovementType = 2,
      InhabitType = 1
    WHERE entry = 35905;

DELETE * FROM npc_spellclick_spells WHERE npc_entry = 35905;
INSERT INTO npc_spellclick_spells ( npc_entry, spell_id, cast_flags, user_type) VALUES
(35905, 68219, 1, 0);
/* Waypoints King Greymane's Horse */

DELETE * FROM waypoints WHERE entry = 35905;
INSERT INTO waypoints (entry, pointid, position_x, position_y,position_z,point_comment) VALUES
(35905, 1,-1797.525261, 1403.351074, 19.835711, "King Greymane's Waypoint"),
(35905, 2,-1798.400166, 1395.755859, 19.903023, "King Greymane's Waypoint"),
(35905, 3,-1793.752441, 1382.324219, 19.842448, "King Greymane's Waypoint"),
(35905, 4,-1781.656494, 1369.981812, 19.896338, "King Greymane's Waypoint"),
(35905, 5,-1763.633545, 1366.066284, 19.709974, "King Greymane's Waypoint"),
(35905, 6,-1709.085938, 1347.840820, 19.782467, "King Greymane's Waypoint"),
(35905, 7,-1703.552856, 1346.945923, 21.061985, "King Greymane's Waypoint"),
(35905, 8,-1680.925659, 1343.793091, 15.135222, "King Greymane's Waypoint"),
(35905, 9,-1669.763306, 1349.344360, 15.135222, "King Greymane's Waypoint"),
(35905, 10,-1662.996826, 1349.788574, 15.135222, "King Greymane's Waypoint"),
(35905, 11,-1665.336548, 1360.432373, 15.135222, "King Greymane's Waypoint"),
(35905, 12,-1674.381958, 1363.047241, 15.135222, "King Greymane's Waypoint"),
(35905, 13,-1704.826050, 1350.664062, 19.896397, "King Greymane's Waypoint"),
(35905, 14,-1744.681152, 1366.752930, 19.879541, "King Greymane's Waypoint"),
(35905, 15,-1761.122803, 1389.081421, 19.940752, "King Greymane's Waypoint"),
(35905, 16,-1769.649170, 1409.496704, 19.782454, "King Greymane's Waypoint"),
(35905, 17,-1771.756470, 1435.351074, 19.835711, "King Greymane's Waypoint");

/* Here we use template_addon 'cause it's a summoned creature, not an existing one */
DELETE * FROM creature_template_addon WHERE entry = 35905;
INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, auras) VALUES 
(35905,359050,0,0,0,0,0);

SET @ACTION = 123456789;

DELETE * FROM waypoint_data WHERE id = 359050;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, orientation, delay, move_flag, action, action_chance,wpguid) VALUES

(359050, 1,-1797.525261, 1403.351074, 19.835711, 5.002352, 0, 1, @ACTION, 100, 0),
(359050, 2,-1798.400166, 1395.755859, 19.903023, 5.088977, 0, 1, @ACTION, 100, 0),
(359050, 3,-1793.752441, 1382.324219, 19.842448, 5.088977, 0, 1, @ACTION, 100, 0),
(359050, 4,-1781.656494, 1369.981812, 19.896338, 5.676226, 0, 1, @ACTION, 100, 0),
(359050, 5,-1763.633545, 1366.066284, 19.709974, 8.883226, 0, 1, @ACTION, 100, 0),
(359050, 6,-1709.085938, 1347.840820, 19.782467, 6.122851, 0, 1, @ACTION, 100, 0),
(359050, 7,-1703.552856, 1346.945923, 21.061985, 6.122851, 0, 1, @ACTION, 100, 0),
(359050, 8,-1680.925659, 1343.793091, 15.135222, 6.122851, 0, 1, @ACTION, 100, 0),
(359050, 9,-1669.763306, 1349.344360, 15.135222, 6.092476, 0, 1, @ACTION, 100, 0),
(359050, 10,-1662.996826, 1349.788574, 15.135222, 0.999540, 0, 1, @ACTION, 100, 0),
(359050, 11,-1665.336548, 1360.432373, 15.135222, 2.377665, 0, 1, @ACTION, 100, 0),
(359050, 12,-1674.381958, 1363.047241, 15.135222, 2.996415, 0, 1, @ACTION, 100, 0),
(359050, 13,-1704.826050, 1350.664062, 19.896397, 3.419415, 0, 1, @ACTION, 100, 0),
(359050, 14,-1744.681152, 1366.752930, 19.879541, 2.757915, 0, 1, @ACTION, 100, 0),
(359050, 15,-1761.122803, 1389.081421, 19.940752, 2.087415, 0, 1, @ACTION, 100, 0),
(359050, 16,-1769.649170, 1409.496704, 19.782454, 1.850041, 0, 1, @ACTION, 100, 0),
(359050, 17,-1771.756470, 1435.351074, 19.835711, 5.002352, 0, 1, @ACTION, 100, 0);

DELETE * FROM waypoint_scripts WHERE datalong = 359050;
INSERT INTO waypoint_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o, guid) VALUES 
(@ACTION, 0, 20, 359050, 0, 0, 0, 0, 0, 0, @ACTION );
/* 
  Rescue Krennan Arenas 
68219->spell
68228->effect
*/
INSERT INTO smart_scripts ( entryorguid, source_type, id , link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(68219,0,0,0,27,4,100,1,15,15,0,0,11,68228,33,35753,0,0,0,22,0,0,0,0,0,0,0,"On Spell 68219 Casting - Trigger 68228");

