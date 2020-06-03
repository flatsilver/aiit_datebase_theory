/* アーティスト別のアルバムを表示する */
SELECT artist.name, album.name, album.release_date
FROM artist
    JOIN album
    ON artist.artist_id = album.artist_id
;