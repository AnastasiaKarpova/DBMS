USE PV_319_DDL;
GO

CREATE TABLE Grades
(
	student INT CONSTRAINT FK_Grades_Students	FOREIGN KEY REFERENCES Students(student_id),
	lesson BIGINT CONSTRAINT FK_Grades_Schedule	FOREIGN KEY REFERENCES Schedule(lesson_id),
	PRIMARY KEY(student, lesson),
	present BIT NOT NULL,
	grade_1 TINYINT NULL,
	grade_2 TINYINT NULL
);