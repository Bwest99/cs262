--
-- This SQL script builds a monopoly database, deleting any pre-existing version.
--
-- @author kvlinden
-- @version Summer, 2015
--

-- Drop previous versions of the tables if they they exist, in reverse order of foreign keys.
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS PropertyInfo;
DROP TABLE IF EXISTS PieceLocation;
DROP TABLE IF EXISTS Player;


-- Create the schema.
CREATE TABLE Game (
	ID integer PRIMARY KEY, 
	time timestamp,
	TurnNumber integer
	);

CREATE TABLE Player (
	ID integer PRIMARY KEY, 
	emailAddress varchar(50) NOT NULL,
	name varchar(50)
	);

CREATE TABLE PlayerGame (
	gameID integer REFERENCES Game(ID), 
	playerID integer REFERENCES Player(ID),
	score integer,
	PlayerCash integer
	);

CREATE TABLE PropertyInfo(
	PlayerID integer REFERENCES Player(ID),
	PropertyName varchar(50) NOT NULL,
	HousesOnProp integer,
	HotelsOnProp integer
	);

CREATE TABLE PieceLocation(
	gameID integer REFERENCES Game(ID),
	PlayerID integer REFERENCES Player(ID),
	TurnNumber integer,
	PlayerLocation integer
	);

-- Allow users to select data from the tables.
GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;
GRANT SELECT ON PropertyInfo TO PUBLIC;
GRANT SELECT ON PieceLocation TO PUBLIC;

-- Add sample records.
INSERT INTO Game VALUES (1, '2006-06-27 08:00:00', 4);
INSERT INTO Game VALUES (2, '2006-06-28 13:20:00', 10);
INSERT INTO Game VALUES (3, '2006-06-29 18:41:00', 100);

INSERT INTO Player(ID, emailAddress) VALUES (1, 'me@calvin.edu');
INSERT INTO Player VALUES (2, 'king@gmail.edu', 'The King');
INSERT INTO Player VALUES (3, 'dog@gmail.edu', 'Dogbreath');

INSERT INTO PlayerGame VALUES (1, 1, 0.00);
INSERT INTO PlayerGame VALUES (1, 2, 0.00);
INSERT INTO PlayerGame VALUES (1, 3, 2350.00);
INSERT INTO PlayerGame VALUES (2, 1, 1000.00);
INSERT INTO PlayerGame VALUES (2, 2, 0.00);
INSERT INTO PlayerGame VALUES (2, 3, 500.00);
INSERT INTO PlayerGame VALUES (3, 2, 0.00);
INSERT INTO PlayerGame VALUES (3, 3, 5500.00);

INSERT INTO PropertyInfo VALUES (1, 'Park Place', 0, 2);
INSERT INTO PropertyInfo VALUES (1, 'Boardwalk', 3, 0);
INSERT INTO PropertyInfo VALUES (3, 'Pennsylvania Ave', 0, 0);
INSERT INTO PropertyInfo VALUES (2, 'another random monopoly property!', 1, 0);
INSERT INTO PropertyInfo VALUES (2, 'Guess which programmer forgot the board', 10, 2);

INSERT INTO PieceLocation VALUES (1, 1, 4, 10);
INSERT INTO PieceLocation VALUES (1, 2, 4, 10);
INSERT INTO PieceLocation VALUES (1, 3, 4, 10);