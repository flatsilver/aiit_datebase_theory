/* --- Create artist table --- */
DROP TABLE IF EXISTS artist;
CREATE TABLE artist(
    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT,
    debut_year INTEGER
);

INSERT INTO artist (name, description, debut_year)
VALUES
    ('The Beatles', 'The Beatles were an English rock band formed in Liverpool in 1960.', 1962),
    ('Radiohead', 'Radiohead are an English rock band formed in Abingdon, Oxfordshire, in 1985.', 1991),
    ('The Who', 'The Who are an English rock band formed in London in 1964.', 1964)
;

/* --- Create album table --- */
DROP TABLE IF EXISTS album;
CREATE TABLE album(
    album_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    release_date TEXT,
    artist_id INTEGER,
    genre_id INTEGER,
    label_id INTEGER
);

INSERT INTO album(name, release_date, artist_id, genre_id, label_id)
VALUES
    ('Rubber Soul', '1965-12-3', 1, 1, 1),
    ('In Rainbows', '2007-10-7', 2, 3, 2)
;

/* --- Create song table --- */
DROP TABLE IF EXISTS song;
CREATE TABLE song(
    song_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    running_sec INTEGER,
    artist_id INTEGER
);

INSERT INTO song(name, running_sec, artist_id)
VALUES
    ('Drive My Car', 148, 1),
    ('Norwegian Wood (This Bird Has Flown)', 125, 1),
    ('15 Step', 238, 2),
    ('Bodysnatchers', 242, 2)
;

/* --- Create song_album table --- */
DROP TABLE IF EXISTS song_album;
CREATE TABLE song_album(
    song_album_id INTEGER PRIMARY KEY AUTOINCREMENT,
    song_id INTEGER,
    album_id INTEGER,
    music_order INTEGER
);

INSERT INTO song_album(song_id, album_id, music_order)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 1),
    (4, 2, 2)
;

/* --- Create label table --- */
DROP TABLE IF EXISTS label;
CREATE TABLE label(
    label_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

INSERT INTO label(name)
VALUES
    ('Parlophone'),
    ('Self-publishing')
;

/* --- Create genre table --- */
DROP TABLE IF EXISTS genre;
CREATE TABLE genre(
    genre_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

INSERT INTO genre(name)
VALUES
    ('Rock'),
    ('pop'),
    ('Art rock')
;
