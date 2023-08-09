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


