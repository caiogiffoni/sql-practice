DECLARE @descDeluxe FLOAT = .09, @descRegular FLOAT = .07, @descEconomy FLOAT = .05

SELECT
	ProductKey,
	ProductName,
	ClassName,
	IIF(ClassName = 'Deluxe',
	@descDeluxe,
	IIF(ClassName = 'Regular',
	@descRegular,
	IIF(ClassName = 'Economy',
	@descEconomy,
	0))) AS 'Desconto',
	UnitPrice * (1 - IIF(ClassName = 'Deluxe',
	@descDeluxe,
	IIF(ClassName = 'Regular',
	@descRegular,
	IIF(ClassName = 'Economy',
	@descEconomy,
	0))))  AS 'Unit Desconto'
FROM
	DimProduct dp


SELECT
	BrandName,
	COUNT(*),
	IIF(COUNT(*)> 500, 'Cat A', IIF(COUNT(*)>100, 'Cat B', 'Cat C'))
FROM
	DimProduct dp
GROUP BY
	BrandName


SELECT
	StoreName,
	EmployeeCount,
	IIF(EmployeeCount >= 50,
	'Acima de 50 func',
	IIF(EmployeeCount >= 40,
	'Entre 40 e 50 func',
	IIF(EmployeeCount >= 30,
	'Entre 40 e 30 func',
	IIF(EmployeeCount >= 20,
	'Entre 30 e 20 func',
	IIF(EmployeeCount >= 10,
	'Entre 20 e 10 func',
	'Abaixo de 10 func')))))
FROM
	DimStore ds



SELECT
	dps.ProductSubcategoryName,
	ROUND(AVG(dp.Weight) * 100, 2) AS '100*avg-weight',
	IIF(AVG(dp.Weight) * 100 > 1000, 'Rota 2', 'Rota 1') AS 'Rota'
FROM
	DimProduct dp
JOIN DimProductSubcategory dps ON
	dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
GROUP BY
dps.ProductSubcategoryName


SELECT
	FirstName,
	Gender,
	TotalChildren,
	EmailAddress,
	IIF(Gender = 'F'
	AND TotalChildren > 0,
	'Sorteio Mãe do Ano',
	IIF(Gender = 'M'
	AND TotalChildren > 0,
	'Sorteio Pai do Ano',
	'Caminhão de Prêmios')) AS 'Ações de MKT'
FROM
	DimCustomer dc


SELECT
	DATEDIFF(DAY, OpenDate, IIF(Status = 'Off', CloseDate, SYSDATETIME())) AS 'Dias Aberto',
	*
FROM
	DimStore ds
ORDER BY
	'Dias Aberto' DESC

