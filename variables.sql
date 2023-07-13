DECLARE @valor1 INT = 10, @valor2 INT = 5, @valor3 INT = 34, @valor4 INT = 7, @soma INT = 0, @subt INT = 0, @mult INT = 0, @div FLOAT = 0 
SET @soma = @valor1 + @valor2 
SET @subt = @valor3 - @valor4
SET @mult = @valor1 * @valor3
SET @div = CAST(@valor3 AS FLOAT) / CAST(@valor4 AS FLOAT)

SELECT @soma, @subt, @mult, ROUND(@div, 2)
 
DECLARE @produto VARCHAR(30) = 'Celular', @quantidade INT = 12, @preco FLOAT = 9.99, @faturamento FLOAT
SET @faturamento = @preco * @quantidade

SELECT @produto as prod, @quantidade, @preco, @faturamento


DECLARE @nome VARCHAR(30) = 'André', @date DATETIME = '10/02/1998', @pets INT = 2
PRINT'Meu nome é ' + @nome + ', nasci em ' + FORMAT(@date, 'dd/MM/yyyy') + ' e tenho ' + CAST(@pets AS VARCHAR(20)) + ' gatos'



DECLARE @nome_loja VARCHAR(100)
SET
@nome_loja = ''
SELECT
	@nome_loja = @nome_loja + StoreName + ', '
FROM
	DimStore ds
WHERE
	status = 'Off'
	AND CloseDate between '2008-01-01' and '2008-12-31'
PRINT 'As lojas fechadas em 2008 foram ' + @nome_loja

SELECT * from DimProduct dp JOIN DimProductSubcategory dps ON dps.ProductSubcategoryKey = dp.ProductSubcategoryKey WHERE ProductName LIKE '%Lumps%'

SELECT * FROM DimProductSubcategory dps 



DECLARE @id INT, @subcategoria VARCHAR(100)  = 'Radio'
SET @id = (SELECT ProductSubcategoryKey  FROM DimProductSubcategory dps WHERE dps.ProductSubcategoryName = @subcategoria)

SELECT * FROM DimProduct dp WHERE dp.ProductSubcategoryKey = ProductSubcategoryKey 
