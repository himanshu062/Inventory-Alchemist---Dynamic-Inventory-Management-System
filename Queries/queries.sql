-- 1. Top-selling products
SELECT 
    P.ProductName, SUM(OD.Quantity) AS TotalSold
FROM 
    OrderDetails OD
JOIN 
    Products P ON OD.ProductID = P.ProductID
GROUP BY 
    P.ProductID
ORDER BY 
    TotalSold DESC;

-- 2. Daily Sales Report
SELECT 
    DATE(OrderDate) AS SaleDate, SUM(TotalAmount) AS TotalSales
FROM 
    Orders
GROUP BY 
    SaleDate;

-- 3. Low Stock Products
SELECT 
    ProductName, StockQuantity, ReorderLevel
FROM 
    Products
WHERE 
    StockQuantity < ReorderLevel;

