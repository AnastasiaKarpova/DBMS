USE PV_319_Import;
GO

SELECT
		discipline_name AS N'Дисциплина',
		number_of_lessons AS N'Количество занятий'
FROM Directions, Disciplines, DisciplinesDirectionsRelation
WHERE direction = direction_id
AND discipline = discipline_id
AND direction_name LIKE N'Разработка%' --LIKE позволяет находить не точное совпадение, а подстроку в таблице
;

GO

SELECT * FROM Disciplines;

--SELECT
--		discipline_name AS N'Дисциплина',
--		number_of_lessons AS N'Количество дисциплин'
--FROM Directions, Disciplines, DisciplinesDirectionsRelation
--WHERE direction = direction_id
--AND discipline = discipline_id
--AND direction_name LIKE N'%Дизайн' 
---- direction_name = N'Компьютерная графика и дизайн'
--;

--GO