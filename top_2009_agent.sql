-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?

SELECT e.FirstName, e.LastName, MAX(c.SupportRepId) AS NumberOfSales
FROM Employee e
INNER JOIN Customer c, Invoice i
ON e.EmployeeId = c.SupportRepId
AND i.CustomerId = c.CustomerId
WHERE i.InvoiceDate LIKE '%2009%'