SELECT * FROM FactSales fs WHERE StoreKey = (SELECT StoreKey  FROM DimStore ds WHERE StoreName LIKE 'Contoso Orlando Store')

SELECT ProductKey, ProductName, UnitPrice, (SELECT UnitPrice  FROM DimProduct dp WHERE ProductKey = 1893)  AS 'Unit Price ID 1893'  FROM DimProduct dp2 WHERE UnitPrice > (SELECT UnitPrice  FROM DimProduct dp WHERE ProductKey = 1893)

SELECT * FROM DimEmployee de2 WHERE DepartmentName = (SELECT DepartmentName  FROM DimEmployee de WHERE FirstName + ' ' + LastName  = 'Miguel Severino') 

SELECT CustomerKey, FirstName, LastName, EmailAddress, YearlyIncome FROM DimCustomer dc2 WHERE YearlyIncome > (SELECT AVG(YearlyIncome)  FROM DimCustomer dc WHERE CustomerType = 'Person' ) 


		
SELECT
	*
FROM
	DimCustomer dc
WHERE
	CustomerKey IN (
	SELECT
		CustomerKey
	FROM
		FactOnlineSales fos
	WHERE
		PromotionKey IN (
		SELECT
			PromotionKey
		FROM
			DimPromotion dp
		WHERE
			PromotionName = 'Asian Holiday Promotion'))


SELECT * FROM DimCustomer dc WHERE CustomerKey IN (SELECT CustomerKey FROM FactOnlineSales fos GROUP BY CustomerKey, ProductKey HAVING SUM(SalesQuantity) > 3000)
			
			
SELECT AVG(UnitPrice) FROM DimProduct dp

SELECT MAX(Qtd) AS 'Max', MIN(Qtd) AS 'Min', AVG(Qtd) AS 'Média' FROM (SELECT BrandName, COUNT(*) AS 'Qtd' FROM DimProduct dp GROUP BY BrandName) AS T
 


SELECT * FROM FactSales fs WHERE StoreKey = (SELECT StoreKey  FROM DimStore ds WHERE StoreName LIKE 'Contoso Orlando Store')

SELECT ProductKey, ProductName, UnitPrice, (SELECT UnitPrice  FROM DimProduct dp WHERE ProductKey = 1893)  AS 'Unit Price ID 1893'  FROM DimProduct dp2 WHERE UnitPrice > (SELECT UnitPrice  FROM DimProduct dp WHERE ProductKey = 1893)

SELECT * FROM DimEmployee de2 WHERE DepartmentName = (SELECT DepartmentName  FROM DimEmployee de WHERE FirstName + ' ' + LastName  = 'Miguel Severino') 

SELECT CustomerKey, FirstName, LastName, EmailAddress, YearlyIncome FROM DimCustomer dc2 WHERE YearlyIncome > (SELECT AVG(YearlyIncome)  FROM DimCustomer dc WHERE CustomerType = 'Person' ) 


		
SELECT
	*
FROM
	DimCustomer dc
WHERE
	CustomerKey IN (
	SELECT
		CustomerKey
	FROM
		FactOnlineSales fos
	WHERE
		PromotionKey IN (
		SELECT
			PromotionKey
		FROM
			DimPromotion dp
		WHERE
			PromotionName = 'Asian Holiday Promotion'))


SELECT * FROM DimCustomer dc WHERE CustomerKey IN (SELECT CustomerKey FROM FactOnlineSales fos GROUP BY CustomerKey, ProductKey HAVING SUM(SalesQuantity) > 3000)
			
			
SELECT AVG(UnitPrice) FROM DimProduct dp

SELECT MAX(Qtd) AS 'Max', MIN(Qtd) AS 'Min', AVG(Qtd) AS 'Média' FROM (SELECT BrandName, COUNT(*) AS 'Qtd' FROM DimProduct dp GROUP BY BrandName) AS T
 
 
			
		
 
 
 
			
			
		
