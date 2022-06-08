SELECT 
COUNT(DISTINCT s.song_id) AS cancoes,
COUNT(DISTINCT ar.artist_id) AS artistas,
COUNT(DISTINCT al.album_id) AS albuns

FROM song AS s
INNER JOIN artist AS ar
INNER JOIN album AS al;