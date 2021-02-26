SELECT
MAX(Total),
Country 
FROM (
	SELECT
	i.BillingCountry as Country,
	printf("%.2f", SUM(i.Total)) as Total
	FROM Customer c
	JOIN Invoice i ON i.CustomerId = c.CustomerId
	GROUP BY Country
	)