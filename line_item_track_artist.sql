-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT i.InvoiceLineId, t.Name, a.Name
FROM InvoiceLine i
INNER JOIN Track t, Album al, Artist a
ON i.TrackId = t.TrackId
AND t.AlbumId = al.AlbumId
AND al.ArtistId = a.ArtistId