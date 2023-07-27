SELECT
	ProductName,
	LEN(ProductName)
FROM
	DimProduct dp
ORDER BY 
	LEN(ProductName) DESC
	
	
SELECT
	AVG(LEN(ProductName)) 
FROM
	DimProduct dp
	
	
	
SELECT
	REPLACE(REPLACE(ProductName, BrandName, ''), ColorName, '') 
FROM
	DimProduct dp
	
	
	
SELECT
	AVG(LEN(REPLACE(REPLACE(ProductName, BrandName, ''), ColorName, '')))
FROM
	DimProduct dp
	
	

SELECT
	StyleName, TRANSLATE(StyleName, '0123456789', 'ABCDEFGHIJ')
FROM
	DimProduct dp
	
	
	
SELECT
	CONCAT(FirstName, ' ', LastName) AS 'Nome Completo',
	EmailAddress,
	BirthDate,
	SUBSTRING(EmailAddress, 0, CHARINDEX('@',EmailAddress)) as 'user',
	UPPER(FirstName) + CAST(DATENAME(DAYOFYEAR, BirthDate) AS VARCHAR(30)) as 'senha'
FROM
	DimEmployee de 
	
	
SELECT
	FirstName, EmailAddress, AddressLine1, DateFirstPurchase 
FROM
	DimCustomer dc
WHERE YEAR(DateFirstPurchase) = '2001'



SELECT
	FirstName,
	EmailAddress,
	HireDate,
	YEAR(HireDate) as 'ano',
	DATENAME(M, HireDate) as 'mes',
	DAY(HireDate) as 'dia'
FROM
	DimEmployee de 
	
SELECT
	*,
	DATEDIFF(DAY, OpenDate, SYSDATETIME()) as 'dias funcionando'
FROM
	DimStore ds
WHERE
	CloseDate IS NULL
ORDER BY 
	DATEDIFF(DAY, OpenDate, SYSDATETIME()) DESC



