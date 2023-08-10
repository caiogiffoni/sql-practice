DECLARE @year INT = 1996, @qty INT 

WHILE @year <= 2003
BEGIN
	SET
	@qty = (
	SELECT
		COUNT(*)
	FROM
		DimEmployee de
	WHERE
		YEAR(HireDate) = @year
		)
	PRINT 'Qtd de contratacações no ano ' + CAST(@year AS VARCHAR) + ' foi de ' + CAST(@qty AS VARCHAR)
	SET	@year = @year + 1
END



CREATE TABLE Calendatio(Date DATE)

select * from Calendatio 



DECLARE @day DATETIME = '2021-01-01'
SELECT FORMAT(DATEADD(DAY, 1, @day),  'dd/MM/yyyy')
PRINT 'START'
WHILE @day <= '2021-12-31'
BEGIN
	INSERT INTO Calendatio (Date) VALUES (@day)
	PRINT FORMAT(DATEADD(DAY, 1, @day), 'd', 'pt-BR' )
	SET @day = DATEADD(DAY, 1, @day)
END

