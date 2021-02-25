SELECT
c.FirstName,
c.LastName,
c.Country,
i.InvoiceId,
i.InvoiceDate,
i.BillingCountry
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE c.Country = "Brazil";