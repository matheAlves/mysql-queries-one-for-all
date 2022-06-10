SELECT  
	ar.artist_name AS artista,
	al.album_name AS album
FROM album AS al
INNER JOIN artist AS ar ON al.album_artist = ar.artist_id
WHERE ar.artist_name = 'Walter Phoenix'; 