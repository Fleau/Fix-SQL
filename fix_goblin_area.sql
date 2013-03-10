/*Fix Goblin Area
  Works on TDB 4.3.4
*/

/*Chain Quest Kezan*/

/*
1.Life of the Party
  Life of the Party
2.Pirate Party Crashers
3.The Uninvited Guest
4.A Bazillion Macaroons?!
*/
UPDATE quest_template 
  SET NextQuestId = 14115,
      NextQuestIdChain = 14115,
      ExclusiveGroup= 14113
    WHERE Id IN (14113,14153);

UPDATE quest_template SET NextQuestIdChain = 14116
    WHERE Id = 14115;

UPDATE quest_template SET PrevQuestId = 14115,NextQuestIdChain = 14120
    WHERE Id = 14116;

/*
1.Good Help is Hard to Find
  Trouble in the Mines
2.Kaja'Cola
3.Megs in Marketing
4.Rolling with my Homies
5.Report for Tryouts
6.The Replacements
7.Necessary Roughness
8.Fourth and Goal
  Fourth and Goal
9.Give Sassy the News
*/
UPDATE quest_template 
  SET NextQuestId = 25473,
      NextQuestIdChain = 25473,
      ExclusiveGroup= 14069
    WHERE Id IN (14069,14075);

UPDATE quest_template SET PrevQuestId = 0, NextQuestIdChain = 28349 WHERE Id = 25473;    
UPDATE quest_template SET PrevQuestId = 25473, NextQuestIdChain = 14071 WHERE Id = 28349;
UPDATE quest_template SET PrevQuestId = 28349, NextQuestIdChain = 24567 WHERE Id = 14071;
UPDATE quest_template SET PrevQuestId = 14071, NextQuestIdChain = 24488 WHERE Id = 24567;
UPDATE quest_template SET PrevQuestId = 24567, NextQuestIdChain = 24502 WHERE Id = 24488;
UPDATE quest_template SET PrevQuestId = 28349, NextQuestIdChain = 24567 WHERE Id = 24502;
UPDATE quest_template 
  SET PrevQuestId = 24502,
      NextQuestId = 24520, 
      NextQuestIdChain = 24520, 
      ExclusiveGroup = 28414
    WHERE Id  IN (28414,24503);--Fourth and Goal

/*
 Two Similar Updates for 2 different but similar quest!

1.Off to the Bank 
2.The New You 
*/

UPDATE quest_template SET NextQuestIdChain = 14110 WHERE Id = 26711;
UPDATE quest_template SET PrevQuestId = 26711 WHERE Id = 14110;
UPDATE quest_template SET NextQuestIdChain = 14109 WHERE Id = 26712;
UPDATE quest_template SET PrevQuestId = 26712 WHERE Id = 14109;


