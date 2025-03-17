-- SQLite
SELECT * FROM Filmlocations LIMIT 5;
-- 1.
SELECT COUNT(Locations) FROM FilmLocations WHERE Director = "Woody Allen";
-- 2.
SELECT COUNT (TITLE) FROM FilmLocations Where Locations = "Russian Hill";
-- 3.
SELECT COUNT("Release Year") FROM FilmLocations WHERE "Release Year" < 1950;