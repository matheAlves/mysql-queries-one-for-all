SELECT
	u.user_name AS "usuario",
	IF(YEAR(MAX(h.history_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM user as u
JOIN history as h
ON u.user_id = h.user_id
GROUP BY u.user_name
ORDER BY u.user_name;