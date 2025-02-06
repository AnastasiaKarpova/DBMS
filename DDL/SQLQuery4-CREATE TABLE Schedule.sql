USE PV_319_DDL
GO

CREATE TABLE Schedule
(
	lesson_id	BIGINT	PRIMARY KEY,
	date	DATE	NOT NULL,
	time	TIME(7)	NOT NULL,
	discipline	SMALLINT	NOT NULL,
	[group]	INT	NOT NULL,
	teacher	 INT	NOT NULL,
	subject	NVARCHAR(255)	NULL,
	spent	BIT	NOT NULL
);