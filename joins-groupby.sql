SELECT
	ChannelName,
	SUM(fs.SalesQuantity) as 'sales-sum'
FROM
	FactSales fs
INNER JOIN DimChannel dc ON
	dc.ChannelKey = fs.channelKey
GROUP BY dc.ChannelName 
ORDER BY 'sales-sum' DESC


SELECT
	StoreName ,
	SUM(fs.SalesQuantity) as 'sales-sum',
	SUM(fs.ReturnQuantity)
FROM
	FactSales fs
INNER JOIN DimStore ds ON
	ds.StoreKey = fs.StoreKey
GROUP BY
	ds.StoreName
ORDER BY StoreName 


SELECT
	dd.CalendarMonthLabel,
	dd.CalendarYear,
	SUM(fs.SalesQuantity)
FROM
	FactSales fs
INNER JOIN DimDate dd ON
	dd.Datekey = fs.DateKey
GROUP BY
	dd.CalendarMonthLabel,
	dd.CalendarYear,
	CalendarMonth
ORDER BY
	CalendarMonth 
	
	
SELECT
	dp.ColorName,
	SUM(fs.SalesQuantity)
FROM
	FactSales fs
INNER JOIN DimProduct dp ON
	dp.ProductKey = fs.ProductKey
GROUP BY
	dp.ColorName

	
SELECT
	dp.ColorName,
	SUM(fs.SalesQuantity) AS 'soma'
FROM
	FactSales fs
INNER JOIN DimProduct dp ON
	dp.ProductKey = fs.ProductKey
GROUP BY
	dp.ColorName
HAVING SUM(fs.SalesQuantity) > 3000000


SELECT
	ProductCategoryName,
	SUM(fs.SalesQuantity) 'soma'
FROM
	FactSales fs
JOIN DimProduct dp ON
	dp.ProductKey = fs.ProductKey
JOIN DimProductSubcategory dps ON
	dps.ProductSubcategoryKey = dp.ProductSubcategoryKey
JOIN DimProductCategory dpc ON
	dpc.ProductCategoryKey = dps.ProductCategoryKey
GROUP BY dpc.ProductCategoryName  


	
SELECT TOP 1
	dc.CustomerKey,
	dc.FirstName,
	dc.LastName,
	SUM(fos.SalesQuantity) 'soma'
FROM
	FactOnlineSales fos
JOIN DimCustomer dc ON
	dc.CustomerKey = fos.CustomerKey
WHERE
	FirstName IS NOT NULL
GROUP BY
	dc.CustomerKey, dc.FirstName, dc.LastName 
	ORDER BY
		SUM(fos.SalesQuantity) DESC

		
SELECT
	dc.CustomerKey ,
	dp.ProductName ,
	SUM(fos.SalesQuantity) 'soma'
FROM
	FactOnlineSales fos
JOIN DimCustomer dc ON
	dc.CustomerKey = fos.CustomerKey
JOIN DimProduct dp ON
	fos.ProductKey = dp.ProductKey
WHERE
	dc.CustomerKey = 7665
GROUP BY
	dc.CustomerKey,
	ProductName
ORDER BY
		SUM(fos.SalesQuantity) DESC
		
		
SELECT
	dc.Gender,
	SUM(fos.SalesQuantity)
FROM
	FactOnlineSales fos
JOIN DimCustomer dc ON
	dc.CustomerKey = fos.CurrencyKey
WHER 
GROUP BY
	dc.Gender


	SELECT
	CurrencyDescription ,
	AVG(fer.AverageRate)
FROM
	FactExchangeRate fer
JOIN DimCurrency dc ON
	dc.CurrencyKey = fer.CurrencyKey
GROUP BY
	CurrencyDescription 
	HAVING AVG(fer.AverageRate) > 10 AND AVG(fer.AverageRate) < 100

	
	SELECT
	ScenarioDescription ,
	SUM(fsp.Amount)
FROM
	FactStrategyPlan fsp
JOIN DimScenario ds ON
	ds.ScenarioKey = fsp.ScenarioKey
WHERE ds.ScenarioDescription IN ('Actual', 'Budget')
GROUP BY
	ds.ScenarioDescription

SELECT
CalendarYear ,
SUM(fsp.Amount)
FROM
	FactStrategyPlan fsp
	JOIN DimDate dd ON dd.Datekey = fsp.Datekey GROUP BY CalendarYear 


SELECT
	ProductSubcategoryName,
	COUNT(*)
FROM
	DimProduct dp
JOIN DimProductSubcategory dps ON
	dps.ProductSubcategoryKey = dp.ProductSubcategoryKey
WHERE
	dp.BrandName = 'Contoso'
	AND dp.ColorName = 'Silver'
GROUP BY ProductSubcategoryName




SELECT
dps.ProductSubcategoryName,
dp.BrandName,
COUNT(*)
FROM
	DimProduct dp
JOIN DimProductSubcategory dps ON
	dps.ProductSubcategoryKey = dp.ProductSubcategoryKey
GROUP BY dps.ProductSubcategoryName, dp.BrandNam
