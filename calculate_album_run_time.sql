/* アルバムの再生時間を計算 */
SELECT album.name, SUM(song.running_sec) / 60
FROM album
    JOIN song_album
    ON  album.album_id = song_album.album_id
    JOIN song
    ON song_album.song_id = song.song_id
GROUP BY album.album_id
;