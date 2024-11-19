INSERT INTO Users (UserName, Role, PasswordHash)
VALUES 
    ('admin', 'Admin', SHA2('admin123', 256)),
    ('salesperson1', 'Sales', SHA2('sales123', 256)),
    ('manager1', 'Manager', SHA2('manager123', 256));

INSERT INTO Products (ProductName, Category, Price, StockQuantity, ReorderLevel)
VALUES 
    ('Laptop', 'Electronics', 60000, 50, 10),
    ('Headphones', 'Electronics', 2000, 100, 20),
    ('Notebook', 'Stationery', 50, 500, 50);

INSERT INTO Customers (CustomerName, Email, PhoneNumber)
VALUES 
    ('John Doe', 'john.doe@example.com', '9876543210'),
    ('Jane Smith', 'jane.smith@example.com', '8765432109');

INSERT INTO Orders (CustomerID, TotalAmount)
VALUES 
    (1, 120000),
    (2, 5000);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
VALUES 
    (1, 1, 2, 60000),
    (2, 2, 2, 2500);
