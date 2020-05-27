SELECT artist.name, song.name
FROM artist
    JOIN song
    ON artist.artist_id = song.artist_id
WHERE artist.artist_id = 1
;