USE PV_319_Import;
GO

SELECT
		discipline_name AS N'����������',
		number_of_lessons AS N'���������� �������'
FROM Directions, Disciplines, DisciplinesDirectionsRelation
WHERE direction = direction_id
AND discipline = discipline_id
AND direction_name LIKE N'����������%' --LIKE ��������� �������� �� ������ ����������, � ��������� � �������
;

GO

SELECT * FROM Disciplines;

--SELECT
--		discipline_name AS N'����������',
--		number_of_lessons AS N'���������� ���������'
--FROM Directions, Disciplines, DisciplinesDirectionsRelation
--WHERE direction = direction_id
--AND discipline = discipline_id
--AND direction_name LIKE N'%������' 
---- direction_name = N'������������ ������� � ������'
--;

--GO