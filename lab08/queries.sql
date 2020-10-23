--SELECT *
--FROM Game 
--ORDER BY Time DESC
--;

--SELECT * 
--FROM Game 
--WHERE Time < 2020-10-16 12:00:00 +0000
--ORDER BY Time DESC 
--;

--SELECT Name
--FROM Player
--WHERE Name IS NOT NULL;

--SELECT ID
--FROM PlayerGame
--WHERE Score > 2000;

--SELECT *
--FROM Player
--WHERE emailAddress LIKE '%gmail%'
--;

--SELECT Score
--FROM Player, PlayerGame
--WHERE Player.ID = PlayerGame.PlayerID
--and Player.Name = 'The King'
--;

--SELECT Player.Name, Score
--FROM Game, PlayerGame, Player
--WHERE Player.ID = PlayerGame.PlayerID
--AND Game.ID = PlayerGame.GameID
--AND Game.Time = '2006-06-28 13:20:00'
--LIMIT 1
--;

--In the last example, p1 < p2 just ensures that they are different players, if it didn't do this check, it would match p1 with p1

--It would be useful whenever you needed to compare a row to itself, or rows with each other, such as to see if there are duplicate 
--serial numbers listed in a database.