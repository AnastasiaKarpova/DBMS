USE PV_319_Import;
SET DATEFIRST 1;
GO

DECLARE @date	AS DATE = DATEFROMPARTS(2025,01,01);
DECLARE @weekday	AS	TINYINT	= DATEPART(WEEKDAY, @date);
DECLARE @start_date	AS	DATE = DATEADD(DAY, -@weekday+1, @date);
PRINT(@date);
PRINT(@weekday);
PRINT(@start_date);

--CREATE PROCEDURE sp_AddNewYearHolidayFor
--	@year	AS	SMALLINT
--BEGIN
--	DECLARE @start_date	AS	DATE = DATEADD()
--END