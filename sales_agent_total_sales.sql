SELECT
e.FirstName || ' ' || e.LastName as FullName,
SUM(i.Total)
FROM Invoice i
JOIN Customer c on c.CustomerId = i.CustomerId
JOIN Employee e on c.SupportRepId = e.EmployeeId
GROUP BY FullName;