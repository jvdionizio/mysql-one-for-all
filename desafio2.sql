SELECT COUNT(musicas_total.musica) AS cancoes, COUNT(DISTINCT albums_total.artista_id) AS artistas, COUNT(DISTINCT musicas_total.album_id) AS albuns
FROM SpotifyClone.musicas AS musicas_total
INNER JOIN SpotifyClone.albums AS albums_total
ON musicas_total.album_id = albums_total.album_id;
