-- Table definitions for the tournament project.

-- Database
CREATE DATABASE tournament;
\c tournament;

-- Player Table
CREATE TABLE players(
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
);

-- Matchs Table
CREATE TABLE matches (
  id serial PRIMARY KEY,
  player INTEGER REFERENCES players(id),
  opponent INTEGER REFERENCES players(id),
  result INTEGER
);

-- Wins View shows number of wins for each player
CREATE VIEW wins AS
	SELECT players.id, COUNT(matches.opponent) AS n
	FROM players
	LEFT JOIN (SELECT * FROM matches WHERE result > 0) AS matches
	ON players.id = matches.player
	GROUP BY players.id;

-- Count View shows number of matches for each player
CREATE VIEW count AS
	SELECT players.id, COUNT(matches.opponent) AS n
	FROM players
	LEFT JOIN matches
	ON players.id = matches.player
	GROUP BY players.id;

-- Standings View shows number of wins and matches for each player
CREATE VIEW standings AS
	SELECT players.id, players.name, wins.n AS wins, count.n AS matches
	FROM players, count, wins
	WHERE players.id = wins.id AND wins.id = count.id;
