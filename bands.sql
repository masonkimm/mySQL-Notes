show databases;
CREATE DATABASE record_company;
USE record_company;
CREATE TABLE bands(
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR (255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE albums (
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(band_id) REFERENCES bands(id)
);

-- INSERT --
INSERT INTO bands(name) 
VALUES ('Muse');

INSERT INTO bands(name)
VALUES('Good Charlotte'), ('Yellow Card'), ('Beatles');

SELECT * FROM bands;
SELECT * FROM bands LIMIT 2;
SELECT name FROM bands;

SELECT id AS 'ID', name AS 'Band Name'
FROM bands;

SELECT * FROM bands ORDER BY name;
SELECT * FROM bands ORDER BY name DESC;

INSERT INTO albums (name, release_year, band_id)
VALUES ('The Album 1 by Beatles',2000, 4), 
('The Album 2 by Good Charllote', 2004, 2),
('The Album 3 by Yellow Card', 2007, 3),
('The Album 4 by Muse', 2009, 1),
('The Album 2 by Beatles', 2002, 4);

SELECT * FROM albums;

-- WHERE -- 
UPDATE albums SET release_year = 1992 WHERE id=1;

SELECT * FROM albums WHERE release_year< 2000;

SELECT * FROM albums WHERE name LIKE '%ea%' OR band_id = 2;

SELECT * FROM albums WHERE release_year=1992 AND band_id=4;

SELECT * FROM albums WHERE release_year BETWEEN 2000 AND 2020;

DELETE FROM albums WHERE band_id = 3; 

-- JOIN --
SELECT * FROM bands JOIN albums ON bands.id = albums.band_id;

SELECT * FROM bands LEFT JOIN albums on bands.id = albums.band_id;
SELECT * FROM albums RIGHT JOIN bands on bands.id = albums.band_id;


-- Aggregate functions --  

SELECT AVG(release_year) FROM albums;

-- Group By --  
SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id=




