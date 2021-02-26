SELECT
c.Country,
SUM(i.Total)
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY c.Country