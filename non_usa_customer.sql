SELECT
CustomerId,
FirstName || ' ' || LastName as FullName,
Country
FROM Customer
WHERE NOT Country = "USA";