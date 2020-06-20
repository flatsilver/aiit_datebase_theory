/* --- DROP TABLE --- */
DROP TABLE IF EXISTS song_album;
DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS song;
DROP TABLE IF EXISTS artist;
DROP TABLE IF EXISTS label;
DROP TABLE IF EXISTS genre;

/* --- Create artist table --- */
CREATE TABLE artist(
    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    debut_year INTEGER
);

INSERT INTO artist (name, description, debut_year)
VALUES
    ('The Beatles', 'The Beatles were an English rock band formed in Liverpool in 1960.', 1962),
    ('Radiohead', 'Radiohead are an English rock band formed in Abingdon, Oxfordshire, in 1985.', 1991),
    ('The Who', 'The Who are an English rock band formed in London in 1964.', 1964)
;

/* --- Create song table --- */
CREATE TABLE song(
    song_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    running_sec REAL,
    artist_id INTEGER,
    FOREIGN KEY (artist_id)
      REFERENCES artist (artist_id)
        ON DELETE SET NULL
);

INSERT INTO song(name, running_sec, artist_id)
VALUES
    ('Drive My Car', 148, 1),
    ('Norwegian Wood (This Bird Has Flown)', 125, 1),
    ('15 Step', 238, 2),
    ('Bodysnatchers', 242, 2)
;

/* --- Create label table --- */
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

/* --- Create album table --- */
CREATE TABLE album(
    album_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    release_date TEXT,
    artist_id INTEGER,
    genre_id INTEGER,
    label_id INTEGER,
    FOREIGN KEY (artist_id)
      REFERENCES artist (artist_id)
        ON DELETE SET NULL,
    FOREIGN KEY (genre_id)
      REFERENCES genre (genre_id)
        ON DELETE SET NULL,
    FOREIGN KEY (label_id)
      REFERENCES label (label_id)
        ON DELETE SET NULL
);

INSERT INTO album(name, release_date, artist_id, genre_id, label_id)
VALUES
    ('Rubber Soul', '1965-12-3', 1, 1, 1),
    ('In Rainbows', '2007-10-7', 2, 3, 2)
;

/* --- Create song_album table --- */
CREATE TABLE song_album(
    song_album_id INTEGER PRIMARY KEY AUTOINCREMENT,
    song_id INTEGER,
    album_id INTEGER,
    music_order INTEGER,
    FOREIGN KEY (song_id)
      REFERENCES song (song_id)
        ON DELETE SET NULL,
    FOREIGN KEY (album_id)
      REFERENCES album (album_id)
        ON DELETE SET NULL
);

INSERT INTO song_album(song_id, album_id, music_order)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 1),
    (4, 2, 2)
;