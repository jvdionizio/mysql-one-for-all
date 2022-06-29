SELECT artistas_tbl.artista AS artista, albums_tbl.album AS album
FROM SpotifyClone.artistas AS artistas_tbl
INNER JOIN SpotifyClone.albums AS albums_tbl
ON artistas_tbl.artista_id = albums_tbl.artista_id
WHERE artistas_tbl.artista = 'Walter Phoenix'
ORDER BY artista, album;
