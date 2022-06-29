SELECT artista, album, count(usuario_id) as seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albums AS albums
ON albums.artista_id = artistas.artista_id
INNER JOIN SpotifyClone.usuarios_seguindo AS seguindo
ON seguindo.artista_id = artistas.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
