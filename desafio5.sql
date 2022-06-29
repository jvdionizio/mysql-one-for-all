SELECT musica AS cancao, count(*) AS reproducoes
FROM SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.historico AS historico
ON musicas.musica_id = historico.musica_id
GROUP BY musica
ORDER BY reproducoes DESC, musica
LIMIT 2;
