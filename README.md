# Swiss-system Tournament
Track players in a swiss-system style tournament.  Backed by a PostgreSQL database, functionality includes registering players, creating matches between players, deleting players and matches, and pairing players according to swiss-style rules (players of equal standing play each other).

## Dependencies
*  Python: [https://www.python.org/](https://www.python.org) 
*  PostgreSQL: [http://www.postgresql.org/](http://www.postgresql.org/)
*  Psycopg2: [http://initd.org/psycopg/](http://initd.org/psycopg/)

## Build the tournament database
1) From a terminal run postgres
```
psql
```

2) Build database by importing sql file
```
\i tournament.sql
```

## How to use
```
import tournament *

# Connect to database
db = psycopg2.connect("dbname=tournament")

# Register player
registerPlayer("daniel chaboya")

# Count the number of players
countPlayers()

# Record outcome match between two players, arguments are player id's
reportMatch(23, 15)

# Returns player standings(id, name, wins, total matches played)
playerStandings()

# Return list of player pairs for next match.  Players are matched according to wins.
swissPairings()

# Delete players
deletePlayers()

# Delete matches
deleteMatches()
```

## Run tests
```
python tournament_test.py
```