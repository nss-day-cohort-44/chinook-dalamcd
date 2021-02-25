SELECT
e.FirstName,
e.LastName,
i.InvoiceId,
i.Total
FROM Invoice i
JOIN Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId AND c.CustomerId = i.CustomerId
ORDER BY e.LastName;