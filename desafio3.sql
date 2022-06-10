SELECT 
u.user_name AS usuario,
COUNT(h.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(s.song_length)/60, 2) AS total_minutos

FROM user AS u
INNER JOIN history AS h ON h.user_id = u.user_id
INNER JOIN song AS s ON h.song_id = s.song_id
GROUP BY u.user_name
ORDER BY u.user_name; 