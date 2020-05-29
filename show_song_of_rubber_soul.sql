-- Rubber Soulの曲名を抽出する
-- SQLiteではテーブル名に AS を使えない？
SELECT album.name, song.name
FROM song
    JOIN song_album
    ON song.song_id = song_album.song_id
    JOIN album
    ON song_album.album_id = album.album_id
WHERE album.album_id = 1
ORDER BY song_album.music_order
;