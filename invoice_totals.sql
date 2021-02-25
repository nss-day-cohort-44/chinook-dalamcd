SELECT
i.Total,
c.FirstName || ' ' ||c.LastName as CustomerName,
c.Country,
e.FirstName || ' ' || e.LastName as EmployeeName
FROM Invoice AS i
JOIN Customer AS c ON c.CustomerId = i.CustomerId
JOIN Employee AS e ON e.EmployeeId = c.SupportRepId
ORDER BY e.LastName;