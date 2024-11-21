USE DWHNorthwindOrders;
GO


-- Limpieza de las tablas
TRUNCATE TABLE dbo.DimStores;
TRUNCATE TABLE dbo.DimTitles;
TRUNCATE TABLE dbo.DimPublishers;
TRUNCATE TABLE dbo.DimDates;
TRUNCATE TABLE dbo.FactSales;
TRUNCATE TABLE dbo.FactClientesAtendidos;
TRUNCATE TABLE dbo.FactCustomers;




INSERT INTO dbo.DimStores (StoreKey, StoreName)
VALUES
(1, 'Store A'),
(2, 'Store B'),
(3, 'Store C');



INSERT INTO dbo.DimTitles (TitleKey, TitleName, TitlePrice)
VALUES
(1, 'Book 1', 19.99),
(2, 'Book 2', 15.49),
(3, 'Book 3', 22.99);


INSERT INTO dbo.DimPublishers (PublisherKey, PublisherName)
VALUES
(1, 'Publisher A'),
(2, 'Publisher B'),
(3, 'Publisher C');




INSERT INTO dbo.DimDates (DateKey, Date, Month, Year)
VALUES
(20240101, '2024-01-01', 1, 2024),
(20240102, '2024-01-02', 1, 2024),
(20240103, '2024-01-03', 1, 2024);



INSERT INTO dbo.FactSales (SalesKey, StoreKey, TitleKey, OrderDateKey, SalesQuantity)
VALUES
(1, 1, 1, 20240101, 10),
(2, 2, 2, 20240102, 5),
(3, 3, 3, 20240103, 3);


INSERT INTO dbo.FactCustomers (CustomerKey, StoreKey, OrderDateKey, TotalSpent)
VALUES
(1, 1, 20240101, 150.00),
(2, 2, 20240102, 200.00),
(3, 3, 20240103, 120.00);


SELECT * FROM dbo.DimStores;

SELECT * FROM dbo.DimTitles;

SELECT * FROM dbo.DimPublishers;

SELECT * FROM dbo.DimDates;

SELECT * FROM dbo.FactSales;

SELECT * FROM dbo.FactClientesAtendidos;

SELECT * FROM dbo.FactCustomers;






