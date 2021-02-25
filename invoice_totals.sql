SELECT
i.Total,
c.FirstName,
c.LastName,
c.Country,
e.FirstName EmpFirstName,
e.LastName EmpLastName
FROM Invoice AS i
JOIN Customer AS c ON c.CustomerId = i.CustomerId
JOIN Employee AS e ON e.EmployeeId = c.SupportRepId
ORDER BY e.LastName;