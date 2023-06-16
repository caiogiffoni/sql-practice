SELECT
	*
FROM
	DimProductSubcategory dps 

SELECT
	*
FROM
	DimProduct dp  

SELECT
	dp.ProductKey ,
	dp.ProductName ,
	dps.ProductSubcategoryName
FROM
	DimProduct dp
JOIN DimProductSubcategory dps ON
	dp.ProductSubcategoryKey = dps.ProductSubcategoryKey 
	
	
SELECT
	*
FROM
	DimProductSubcategory dps
LEFT JOIN
DimProductCategory dpc 
ON
	dps.ProductCategoryKey = dpc.ProductCategoryKey
	
SELECT
	ds.StoreKey,
	ds.StoreName ,
	ds.EmployeeCount ,
	dg.ContinentName ,
	dg.RegionCountryName
FROM
	DimStore ds
JOIN DimGeography dg ON
	ds.GeographyKey = dg.GeographyKey 
	

SELECT
	dp.ProductName ,
	dp.ProductDescription ,
	dp.Manufacturer ,
	dps.ProductSubcategoryDescription ,
	dpc.ProductCategoryDescription
FROM
	DimProduct dp
JOIN DimProductSubcategory dps ON
	dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
JOIN DimProductCategory dpc ON
	dps.ProductCategoryKey = dpc.ProductCategoryKey 
	
	
SELECT
	fsp.StrategyPlanKey ,
	fsp.Datekey ,
	da.AccountName ,
	fsp.Amount
FROM
	FactStrategyPlan fsp
JOIN DimAccount da ON
	da.AccountKey = fsp.AccountKey 
	
	
SELECT
	fsp.StrategyPlanKey ,
	fsp.Datekey ,
	ds.ScenarioName ,
	fsp.Amount
FROM
	FactStrategyPlan fsp
JOIN DimScenario ds ON
	ds.ScenarioKey = fsp.ScenarioKey
	
SELECT
	ProductSubcategoryName 
FROM
	DimProduct dp 
RIGHT JOIN DimProductSubcategory dps ON
	dp.ProductSubcategoryKey  = dps.ProductSubcategoryKey  
WHERE dp.ProductKey  IS NULL



SELECT DISTINCT BrandName, ChannelName  from DimProduct dp CROSS JOIN DimChannel dc
WHERE dp.BrandName IN ('Contoso', 'Fabrikam', 'Litware')


SELECT
	fos.OnlineSalesKey,
	fos.DateKey,
	dp.PromotionName,
	fos.SalesAmount
FROM
	FactOnlineSales fos
JOIN DimPromotion dp ON
	dp.PromotionKey = fos.PromotionKey
WHERE
	dp.PromotionName != 'No Discount'
ORDER BY
	Datekey ASC
	
	
	
SELECT
	fs.SalesKey,
	dc.ChannelName,
	ds.StoreName,
	dp.ProductName,
	fs.SalesAmount 
FROM
	FactSales fs
JOIN DimChannel dc ON
	dc.ChannelKey = fs.channelKey
JOIN DimStore ds ON
	ds.StoreKey = fs.StoreKey
JOIN DimProduct dp ON
	dp.ProductKey = fs.ProductKey
	ORDER BY fs.SalesAmount DESC
	
