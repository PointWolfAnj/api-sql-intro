-- All films
SELECT * FROM films;

-- All films ordered by rating descending
SELECT * FROM films
ORDER BY rating DESC;

-- All films ordered by release year ascending
SELECT * FROM films
ORDER BY release_year ASC;

-- All films with a rating of 8 or higher
SELECT * FROM films
WHERE rating >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM films
WHERE rating <= 7;

-- films released in 1990
SELECT * FROM films
WHERE release_year = 1990;

-- films released before 2000
SELECT * FROM films
WHERE release_year < 2000;

-- films released after 1990
SELECT * FROM films
WHERE release_year > 1990;

-- films released between 1990 and 1999
SELECT * FROM films
WHERE release_year >= 1990 AND release_year <= 1999;

-- films with the genre of "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi';

-- films with the genre of "Western" or "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi' OR genre = 'Western';

-- films with any genre apart from "SciFi"
SELECT * FROM films
WHERE genre != 'SciFi';

-- films with the genre of "Western" released before 2000
SELECT * FROM films
WHERE genre = 'Western' AND release_year < 2000;

-- films that have the word "Matrix" in their title
SELECT * FROM films
WHERE title LIKE '%Matrix%';

-- Return the average film rating
SELECT AVG(rating)::FLOAT FROM films;

-- Return the total number of films
SELECT COUNT(title) FROM films;

-- Return the average film rating by genre
SELECT AVG(rating)::FLOAT FROM films
GROUP BY genre;


-- Extension 3

-- Recreate your films table and add a directorId column.
ALTER TABLE films
ADD director_id SMALLINT;

-- Re-insert your film data, updating each film with have a directorId.
UPDATE films
SET director_id = -- row number in the directors table
WHERE id = -- row number in the films table

-- Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT * FROM films
INNER JOIN directors ON films.director_id=directors.director_id;
