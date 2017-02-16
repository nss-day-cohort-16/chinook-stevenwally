SELECT SUM(Total) 
AS TotalOrders2011
FROM Invoice
WHERE InvoiceDate LIKE '%2011%'