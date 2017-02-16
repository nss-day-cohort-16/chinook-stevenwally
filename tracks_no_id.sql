-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name, al.Title, m.Name, g.Name
FROM Track t
INNER JOIN Album al, MediaType m, Genre g
ON t.AlbumId = al.AlbumId
AND t.MediaTypeId = m.MediaTypeId
AND t.GenreId = g.GenreId