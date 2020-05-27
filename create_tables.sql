/* --- Create artist table --- */
DROP TABLE IF EXISTS artist;
CREATE TABLE artist(
    artist_id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT,
    debut_year INTEGER
);

INSERT INTO artist
VALUES
    (1, 'The Beatles', 'The Beatles were an English rock band formed in Liverpool in 1960.', 1962),
    (2, 'Radiohead', 'Radiohead are an English rock band formed in Abingdon, Oxfordshire, in 1985.', 1991),
    (3, 'The Who', 'The Who are an English rock band formed in London in 1964.', 1964)
;

/* --- Create album table --- */
DROP TABLE IF EXISTS album;
CREATE TABLE album(
    album_id INTEGER PRIMARY KEY,
    name TEXT,
    release_date TEXT,
    artist_id INTEGER,
    genre_id INTEGER,
    label_id INTEGER
);

INSERT INTO album
VALUES
    (1, 'Rubber Soul', '1965-12-3', 1, 1, 1),
    (2, 'In Rainbows', '2007-10-7', 2, 3, 2)
;

/* --- Create song table --- */
DROP TABLE IF EXISTS song;
CREATE TABLE song(
    song_id INTEGER PRIMARY KEY,
    name TEXT,
    running_sec INTEGER,
    artist_id INTEGER
);

INSERT INTO song
VALUES
    (1, 'Drive My Car', 148, 1),
    (2, 'Norwegian Wood (This Bird Has Flown)', 125, 1),
    (3, '15 Step', 238, 2),
    (4, 'Bodysnatchers', 242, 2)
;

/* --- Create song_album table --- */
DROP TABLE IF EXISTS song_album;
CREATE TABLE song_album(
    song_album_id INTEGER PRIMARY KEY,
    song_id INTEGER,
    album_id INTEGER,
    music_order INTEGER
);

INSERT INTO song_album
VALUES
    (1, 1, 1, 1),
    (2, 2, 1, 2),
    (3, 3, 2, 1),
    (4, 4, 2, 2)
;

/* --- Create label table --- */
DROP TABLE IF EXISTS label;
CREATE TABLE label(
    label_id INTEGER PRIMARY KEY,
    name TEXT
);

INSERT INTO label
VALUES
    (1, 'Parlophone'),
    (2, 'Self-publishing')
;

/* --- Create genre table --- */
DROP TABLE IF EXISTS genre;
CREATE TABLE genre(
    genre_id INTEGER PRIMARY KEY,
    name TEXT
);

INSERT INTO genre
VALUES
    (1, 'Rock'),
    (2, 'pop'),
    (3, 'Art rock')
;
