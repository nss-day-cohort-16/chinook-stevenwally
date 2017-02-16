-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName, e.LastName, SUM(c.SupportRepId)
FROM Employee e
INNER JOIN Customer c
ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId