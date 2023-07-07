DECLARE @valor1 INT = 10, @valor2 INT = 5, @valor3 INT = 34, @valor4 INT = 7, @soma INT = 0, @subt INT = 0, @mult INT = 0, @div FLOAT = 0 
SET @soma = @valor1 + @valor2 
SET @subt = @valor3 - @valor4
SET @mult = @valor1 * @valor3
SET @div = CAST(@valor3 AS FLOAT) / CAST(@valor4 AS FLOAT)

SELECT @soma, @subt, @mult, ROUND(@div, 2)
 
