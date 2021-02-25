SELECT DISTINCT
e.EmployeeId,
e.FirstName,
e.LastName
FROM Employee e
JOIN Customer c ON C.SupportRepId = e.EmployeeId;