CREATE TABLE dbo.Submission (
    SubmissionID INT IDENTITY(1,1),
    StudentID INT NOT NULL,
    AssessmentID INT NOT NULL,
    SubmissionDate DATETIME NOT NULL DEFAULT GETDATE(),
    MarksObtained INT NOT NULL,
    Feedback NVARCHAR(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE dbo.Submission
	ADD CONSTRAINT [PK_Submission] PRIMARY KEY CLUSTERED (SubmissionID) ON [PRIMARY]
GO
ALTER TABLE dbo.Submission
	ADD CONSTRAINT [FK_Submission_Student] FOREIGN KEY (StudentID) REFERENCES dbo.Student(StudentID)
GO
ALTER TABLE dbo.Submission
	ADD CONSTRAINT [FK_Submission_Assessment] FOREIGN KEY (AssessmentID) REFERENCES dbo.Assessment(AssessmentID)
GO