SELECT tabela_usuarios.usuario,
IF(MAX(YEAR(tabela_historico.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS tabela_usuarios
INNER JOIN SpotifyClone.historico AS tabela_historico
ON tabela_historico.usuario_id = tabela_usuarios.usuario_id
GROUP BY tabela_usuarios.usuario
ORDER BY tabela_usuarios.usuario;
