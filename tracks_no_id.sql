SELECT
a.Title Album,
t.Name Track,
g.Name Genre,
m.Name MediaType
FROM Track t
JOIN MediaType m on t.MediaTypeId = m.MediaTypeId
JOIN Genre g on t.GenreId = g.GenreId
JOIN Album a on t.AlbumId = a.AlbumId
ORDER BY Album;