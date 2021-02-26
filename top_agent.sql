SELECT 
	FullName,
	MAX(Total)
	FROM (
		SELECT
		e.FirstName || ' ' || e.LastName as FullName,
		SUM(i.Total) as Total,
		strftime("%Y", i.InvoiceDate) as year
		FROM Invoice i
		JOIN Customer c on c.CustomerId = i.CustomerId
		JOIN Employee e on c.SupportRepId = e.EmployeeId
		GROUP BY FullName
	)
