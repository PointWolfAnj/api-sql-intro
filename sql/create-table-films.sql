CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  genre VARCHAR(50) NOT NULL,
  release_year SMALLINT NOT NULL,
  rating SMALLINT NOT NULL,
  UNIQUE (title)
);