-- Tournament project.
--
-- Table Definitions
CREATE TABLE players (
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL
);

CREATE TABLE matches (
  id SERIAL PRIMARY KEY NOT NULL,
  winner INT  REFERENCES players(id),
  loser INT REFERENCES players(id)
);

-- Gather total matches played 
CREATE VIEW matches_played AS
  SELECT winner as player_id, count(*) as total FROM 
    (SELECT winner as winner FROM matches UNION ALL SELECT loser FROM matches) t
    GROUP BY winner ORDER BY total desc;
