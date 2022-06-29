SELECT COUNT(historico.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.usuarios AS usuarios
ON historico.usuario_id = usuarios.usuario_id
WHERE usuarios.usuario = 'Bill';
