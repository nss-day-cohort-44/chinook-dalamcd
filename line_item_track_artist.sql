SELECT
i.InvoiceId,
i.InvoiceLineId,
t.Name as TrackName,
a.Name as ArtistName
FROM InvoiceLine i
JOIN Track as t on t.TrackId = i.TrackId
JOIN Album al on t.AlbumId = al.AlbumId
JOIN Artist a on al.ArtistId = a.ArtistId