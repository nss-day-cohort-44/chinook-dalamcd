SELECT
SUM(Total),
strftime("%Y", InvoiceDate) as yr
FROM Invoice
WHERE yr = "2009" OR yr = "2011"
GROUP BY yr;