-- Users-tabell
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    navn VARCHAR(100)
);

INSERT INTO users (navn) VALUES
('Siri'),
('Dana'),
('Victor');

-- Bilmerker-tabell
CREATE TABLE bilmerker (
    id SERIAL PRIMARY KEY,
    merke VARCHAR(100)
);

INSERT INTO bilmerker (merke) VALUES
('BMW'),
('Audi'),
('Tesla');

-- Filmer og skuespillere
CREATE TABLE filmer (
    id SERIAL PRIMARY KEY,
    tittel VARCHAR(100) NOT NULL
);

INSERT INTO filmer (tittel) VALUES
('The Matrix'),
('The Matrix Reloaded'),
('The Matrix Revolutions');

CREATE TABLE skuespillere (
    id SERIAL PRIMARY KEY,
    navn VARCHAR(100) NOT NULL
);

INSERT INTO skuespillere (navn) VALUES
('Keanu Reeves'),
('Laurence Fishburne'),
('Carrie-Anne Moss');

CREATE TABLE skuespiller_i_film (
    id SERIAL PRIMARY KEY,
    skuespiller_id INTEGER REFERENCES skuespillere(id),
    film_id INTEGER REFERENCES filmer(id)
);

INSERT INTO skuespiller_i_film (skuespiller_id, film_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1);