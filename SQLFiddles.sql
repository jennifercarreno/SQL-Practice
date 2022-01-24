/*
 * TODO: Create a table called 'songs' that has the following fields:
 * - id - integer, primary key
 * - name - string
 * - album_id - foreign key
 * 
 * Note that album - song is a one-to-many relationship, so no bridge table is needed.
 */

CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name string,
    album_id INTEGER,
     FOREIGN KEY (album_id) REFERENCES Albums(id)
);

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

/* 
 * TODO: Insert at least 4 rows of data into the songs table. You can change up the albums as well. :)
 */

INSERT INTO Songs 
    (name, album_id)
VALUES
    ('watermelon sugar', 6),
    ('adore you', 6),
    ('golden', 6),
    ('lights up', 6),
    ('california song', 3)
;
 
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('California', 'Blink-182', 2016),
    ('Fine Line', 'Harry Styles', 2019)
;

/* Required to get result in column format */
.headers on
.mode column


/* Queries */

-- SELECT * FROM Songs;

SELECT * FROM Albums;

/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name
 */

SELECT * FROM Songs 
JOIN albums on Songs.album_id = Albums.id ;

/*
 * TODO: Find all albums published between 1970 and 1980.
 */

SELECT name FROM Albums
WHERE year_published > 1970 AND year_published < 1980;

/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */

SELECT * FROM Songs 
JOIN albums on Songs.album_id = Albums.id 
WHERE year_published > 1970 
AND year_published < 1980;
 
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */

SELECT * FROM Songs
JOIN albums on Songs.album_id = Albums.id 
WHERE Albums.name LIKE "%California%";

