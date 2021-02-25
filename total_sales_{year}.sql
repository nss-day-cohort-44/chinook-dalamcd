SELECT
InvoiceId
FROM Invoice
WHERE strftime("%Y", InvoiceDate) BETWEEN 2009 AND 2011

SELECT
strftime("%Y", InvoiceDate)
FROM Invoice;