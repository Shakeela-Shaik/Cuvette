SELECT
    cust.CustomerId,
    cust.FirstName || ' ' || cust.LastName AS CustomerName,
    SUM(inv.Total) AS TotalPurchaseAmount
FROM
    customer cust -- Changed to lowercase
JOIN
    invoice inv ON cust.CustomerId = inv.CustomerId -- Changed to lowercase
GROUP BY
    cust.CustomerId, cust.FirstName, cust.LastName
ORDER BY
    TotalPurchaseAmount DESC
LIMIT 5;