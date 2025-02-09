USE PV_319_DDL
GO

CREATE TABLE Schedule
(
	lesson_id	BIGINT	PRIMARY KEY,
	[date]	DATE	NOT NULL,
	[time]	TIME(7)	NOT NULL,
	[discipline]	SMALLINT	CONSTRAINT FK_Schedule_Disciplines	FOREIGN KEY REFERENCES Disciplines(discipline_id),
	[group]	INT	CONSTRAINT FK_Schedule_Groups	FOREIGN KEY REFERENCES Groups(group_id),
	teacher	 INT	CONSTRAINT FK_Schedule_Teachers	FOREIGN KEY REFERENCES Teachers(teacher_id),
	[subject]	NVARCHAR(255)	NULL,
	spent	BIT	NOT NULL
	
);