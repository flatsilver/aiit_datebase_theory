/* アーティスト別に曲を表示させる */
SELECT artist.name, song.name
FROM artist
    JOIN song
    ON artist.artist_id = song.artist_id
;