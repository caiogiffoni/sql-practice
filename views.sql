CREATE VIEW vwProducts AS
SELECT
	ProductName,
	ColorName,
	UnitPrice,
	UnitCost
FROM
	DimProduct dp
GO
CREATE VIEW vwFuncionarios AS
SELECT
	FirstName,
	BirthDate,
	DepartmentName
FROM
	DimEmployee de
	
GO
CREATE VIEW vwLojas AS
SELECT
	StoreKey,
	StoreName,
	OpenDate
FROM
	DimStore ds
	
GO






CREATE VIEW vwClientes AS
SELECT
	FirstName + ' ' + LastName as 'Nome Completo',
	IIF(Gender = 'M',
	'Male',
	'Female') as 'Genero',
	EmailAddress,
	FORMAT(YearlyIncome,
	'c',
	'pt-BR') as 'Renda Anual'
FROM
	DimCustomer dc 
	
	
	
	
	
GO
CREATE VIEW vwLojasAtivas AS
SELECT
	*
FROM
	DimStore ds
	WHERE Status = 'ON'
	
GO

CREATE VIEW vwFuncionariosMkt AS
SELECT
	FirstName,
	EmailAddress,
	DepartmentName
FROM
	DimEmployee de
WHERE
	DepartmentName = 'Marketing'
	
GO
CREATE VIEW vwContosoLitwareSilver AS
SELECT
	*
FROM
	DimProduct dp
WHERE
	BrandName IN ('Contoso', 'Litware')
	AND ColorName = 'Silver'
	
	
	
	
	
	
GO
CREATE VIEW vwTotalVendidoProdutos AS
SELECT
	dp.ProductName,
	SUM(SalesQuantity) AS 'Qtd vendida'
FROM
	FactSales fs
JOIN DimProduct dp ON
	fs.ProductKey = dp.ProductKey
GROUP BY
	dp.ProductName 
	
	
	
	
	
	
	
	
GO
	
ALTER VIEW vwProducts AS
SELECT
	ProductName,
	ColorName,
	UnitPrice,
	UnitCost,
	BrandName 
FROM
	DimProduct dp
GO

ALTER VIEW vwFuncionarios AS
SELECT
	FirstName,
	BirthDate,
	DepartmentName
FROM
	DimEmployee de
WHERE Gender = 'F'
	
GO
ALTER VIEW vwLojas AS
SELECT
	StoreKey,
	StoreName,
	OpenDate
FROM
	DimStore ds
WHERE Status = 'ON'






GO
CREATE VIEW vw_6a AS
SELECT
BrandName, COUNT(*) AS 'Qtd por marca'
FROM
	DimProduct dp 	
	GROUP BY BrandName 
GO
ALTER VIEW vw_6a AS
SELECT
	BrandName,
	COUNT(*) AS 'Qtd por marca',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct dp
GROUP BY
	BrandName 
	
DROP VIEW vw_6a 
	
	
