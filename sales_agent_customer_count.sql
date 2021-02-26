SELECT
e.FirstName || ' ' || e.LastName as FullName,
COUNT(c.SupportRepId)
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY FullName;