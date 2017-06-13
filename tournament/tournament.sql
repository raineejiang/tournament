-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Creat database tournament, drop if it already exists
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;

-- connect to database tournament
\c tournament;

-- Create table for players
CREATE TABLE players (
    id serial primary key,
    name text
);

-- Create table for matches
CREATE TABLE matches (
    id serial primary key,
    winner integer references players(id),
    loser integer references players(id)
);

-- Create view for winners
CREATE VIEW winners as SELECT players.id, name, wins from players,
(SELECT players.id, count(matches.winner) as wins FROM players
LEFT JOIN matches on players.id = matches.winner Group by players.id)
as subq WHERE players.id = subq.id;

-- Create view for losers
CREATE VIEW losers as SELECT players.id, name, loses from players,
(SELECT players.id, count(matches.loser) as loses FROM players
LEFT JOIN matches on players.id = matches.loser Group by players.id)
as subq WHERE players.id = subq.id;


