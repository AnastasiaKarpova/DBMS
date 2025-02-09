USE PV_319_DDL;
GO

CREATE TABLE Exams
(
	student INT CONSTRAINT FK_Exams_Students	FOREIGN KEY REFERENCES Students(student_id),
	lesson BIGINT CONSTRAINT FK_Exams_Schedule	FOREIGN KEY REFERENCES Schedule(lesson_id),
	PRIMARY KEY(student, lesson),
	grade TINYINT NULL
);