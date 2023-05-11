/****** Script for SelectTopNRows command from SSMS  ******/
SELECT OrderID, OrderDate, CustomerID, OrderTotal,
      (SELECT AVG(OrderTotal) FROM dbo.Orders) AS avg_total
FROM dbo.Orders;