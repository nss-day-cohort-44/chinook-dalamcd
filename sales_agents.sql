SELECT DISTINCT
e.EmployeeId,
e.FirstName || ' ' || e.LastName as FullName
FROM Employee e
JOIN Customer c ON C.SupportRepId = e.EmployeeId;