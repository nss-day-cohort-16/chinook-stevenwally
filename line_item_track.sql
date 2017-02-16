-- line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT i.InvoiceId, t.name
FROM InvoiceLine i
INNER JOIN Track t
ON i.TrackId = t.TrackId