SELECT 
	ar.artist_name AS artista,
	al.album_name AS album,
	COUNT(af.artist_id) AS seguidores
FROM artist AS ar
INNER JOIN album AS al
ON ar.artist_id = al.album_artist
INNER JOIN artist_follows as af
ON af.artist_id = ar.artist_id
GROUP BY ar.artist_name, al.album_name
ORDER BY seguidores DESC, artista, album;