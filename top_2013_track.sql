SELECT
TrackName,
MAX(TrackCount)
FROM (
	SELECT
	t.Name TrackName,
	COUNT(il.InvoiceLineId) as TrackCount
	FROM Track t
	JOIN InvoiceLine il ON t.TrackId = il.TrackId
	JOIN Invoice i ON i.InvoiceId = il.InvoiceId
	WHERE strftime("%Y", i.InvoiceDate) = "2013"
	GROUP BY t.Name
	);