-- top_agent.sql: Which sales agent made the most in sales over all?

SELECT e.FirstName, e.LastName, COUNT(c.SupportRepId) AS NumberOfSales
FROM Employee e
INNER JOIN Customer c, Invoice i
ON e.EmployeeId = c.SupportRepId
AND i.CustomerId = c.CustomerId