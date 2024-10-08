CREATE TABLE dbo.Instructor (
    InstructorID INT IDENTITY(1,1),
    FirstName NVARCHAR(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    LastName NVARCHAR(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    Email NVARCHAR(255) UNIQUE NOT NULL,
    Password NVARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    HireDate DATETIME NOT NULL
)
GO
ALTER TABLE dbo.Instructor
	ADD CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED (InstructorID) ON [PRIMARY]
GO