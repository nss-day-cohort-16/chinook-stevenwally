-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Employee
INNER JOIN Customer, Invoice
ON Invoice.CustomerId = Customer.CustomerId
AND Customer.SupportRepId = Employee.EmployeeId
