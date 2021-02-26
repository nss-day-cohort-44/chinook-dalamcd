SELECT
t.Name TrackName,
COUNT(il.InvoiceLineId) as TrackCount
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY TrackCount DESC
LIMIT 5