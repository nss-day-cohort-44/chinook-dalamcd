SELECT 
COUNT(InvoiceId),
strftime("%Y", InvoiceDate) as yr
FROM Invoice
WHERE yr = "2009" or yr ="2011"
GROUP BY yr;