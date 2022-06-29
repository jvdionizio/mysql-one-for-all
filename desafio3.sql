SELECT
tabela_usuarios.usuario AS usuario,
COUNT(tabela_historico.musica_id) AS qtde_musicas_ouvidas,
ROUND(SUM(tabela_musicas.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.historico AS tabela_historico
INNER JOIN SpotifyClone.usuarios AS tabela_usuarios ON tabela_historico.usuario_id = tabela_usuarios.usuario_id
INNER JOIN SpotifyClone.musicas AS tabela_musicas ON tabela_historico.musica_id = tabela_musicas.musica_id
GROUP BY tabela_usuarios.usuario;
