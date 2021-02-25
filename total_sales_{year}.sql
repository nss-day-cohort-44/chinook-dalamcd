SELECT
SUM(Total),
strftime("%Y", InvoiceDate)
FROM Invoice
WHERE strftime("%Y", InvoiceDate) BETWEEN "2009" AND "2011"
GROUP BY strftime("%Y", InvoiceDate);