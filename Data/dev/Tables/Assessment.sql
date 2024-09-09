CREATE TABLE dbo.Assessment (
    AssessmentID INT IDENTITY(1,1),
    AssessmentType NVARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    CourseID INT NOT NULL,
    Title NVARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    TotalMarks INT NOT NULL
)
GO
ALTER TABLE dbo.Assessment
	ADD CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED (AssessmentID) ON [PRIMARY]
GO
ALTER TABLE dbo.Assessment
	ADD CONSTRAINT [FK_Assessment_Course] FOREIGN KEY (CourseID) REFERENCES dbo.Course(CourseID)
GO