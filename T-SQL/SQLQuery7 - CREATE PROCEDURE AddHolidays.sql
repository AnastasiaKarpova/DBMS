USE PV_319_Import;
SET DATEFIRST 1;
GO

CREATE PROCEDURE sp_AddHolidays
@year	AS	SMALLINT,
@name	AS	NVARCHAR(150)
AS
BEGIN
	DECLARE	@start_date	AS	DATE;
	DECLARE @duration	AS	TINYINT;
	CASE	@name
			WHEN	@name	LIKE	(N'���%��������')	THEN	SET	@start_date = dbo.GetNewYearHolidaysStartDate(@year); SET @duration = dbo.GetHolidayDuration() END
	CASE	WHEN	@name	LIKE	(N'���%��������')	THEN	SET	@start_date = dbo.GetSummerHolidaysStart(@year); SET @duration = dbo.GetHolidayDuration() END
END