SELECT
SUM(Total),
strftime("%Y", InvoiceDate) as yr
FROM Invoice
WHERE yr BETWEEN "2009" AND "2011"
GROUP BY yr;