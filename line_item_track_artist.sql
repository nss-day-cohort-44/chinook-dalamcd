SELECT
i.InvoiceId,
i.InvoiceLineId,
t.Name
FROM InvoiceLine i
JOIN Track as t on t.TrackId = i.TrackId;