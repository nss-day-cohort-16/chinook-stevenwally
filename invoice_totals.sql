-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT c.FirstName, c.LastName, c.Country, i.Total, e.FirstName, e.LastName
FROM Customer c
INNER JOIN Invoice i, Employee e
ON c.CustomerId = i.CustomerId
AND c.SupportRepId = e.EmployeeId
