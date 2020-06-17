/* アルバムの再生時間を計算 */
SELECT album.name,
       CAST(CAST(SUM(song.running_sec) / 60 AS INTEGER) AS TEXT) || 'm' ||
       CAST(CAST(SUM(song.running_sec) % 60 AS INTEGER) AS TEXT) || 's'
FROM album
    JOIN song_album
    ON  album.album_id = song_album.album_id
    JOIN song
    ON song_album.song_id = song.song_id
GROUP BY album.album_id
;