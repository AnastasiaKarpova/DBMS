USE PV_319_Import;
SET DATEFIRST 1;
GO

--PRINT(dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
----EXEC sp_PrintScheduleForGroup N'PV_319';
--PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));
--PRINT(dbo.GetNewYearHolidaysStartDate(2025));
--PRINT(dbo.GetSummerHolidaysStart(2024));
--PRINT(dbo.GetHolidayDuration(N'Нов%'));
--PRINT('-------------------------------')
--PRINT(dbo.GetHolidayStartDate(N'День%', 2025));
PRINT(dbo.GetEasterDate(2004));
PRINT(dbo.GetLastDateForGroup(N'PV_319'));
--DECLARE @date AS DATE = (SELECT MAX([date]) FROM Schedule WHERE [group]=dbo.GetGroupID(N'PV_319'));
--PRINT(@date);
--PRINT dbo.GetMaxLearninDayFor(N'PV_319');
PRINT (dbo.GetNextLearningDayFor(N'PV_319'));
--EXEC sp-GetMaxLearningDayFor N'PV_319';
EXEC sp_PrintScheduleForGroup N'PV_319';