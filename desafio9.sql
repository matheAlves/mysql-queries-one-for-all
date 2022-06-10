SELECT 
COUNT(h.song_id) AS quantidade_musicas_no_historico 
FROM history AS h
INNER JOIN user AS u 
ON h.user_id = u.user_id
WHERE u.user_name = 'Bill'
GROUP BY h.user_id;