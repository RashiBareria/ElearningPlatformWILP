CREATE TABLE dbo.Enrollment (
    EnrollmentID INT IDENTITY(1,1),
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATETIME NOT NULL DEFAULT GETDATE(),
    CompletionStatus NVARCHAR(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE dbo.Enrollment
	ADD CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED (EnrollmentID) ON [PRIMARY]
GO
ALTER TABLE dbo.Enrollment
	ADD CONSTRAINT [FK_Enrollment_Student] FOREIGN KEY (StudentID) REFERENCES dbo.Student(StudentID)
GO
ALTER TABLE dbo.Enrollment
	ADD CONSTRAINT [FK_Enrollment_Course] FOREIGN KEY (CourseID) REFERENCES dbo.Course(CourseID)
GO