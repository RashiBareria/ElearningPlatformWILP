CREATE TABLE dbo.Course (
    CourseID INT IDENTITY(1,1),
    CourseName NVARCHAR(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    CourseDescription NVARCHAR(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    Credits INT NOT NULL,
    InstructorID INT NOT NULL,
    CreationDate DATETIME NOT NULL
)
GO
ALTER TABLE dbo.Course
	ADD CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED (CourseID) ON [PRIMARY]
GO
ALTER TABLE dbo.Course
	ADD CONSTRAINT [FK_Course_Instructor] FOREIGN KEY (InstructorID) REFERENCES dbo.Instructor(InstructorID)
GO