CREATE TABLE [dbo].[Question]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(MAX) NULL, 
    [SubjectId] INT NULL, 
    [QuestionNumber] NVARCHAR(MAX) NULL, 
    [Questions] NVARCHAR(MAX) NULL, 
    [ExamTypeId] INT NULL, 
    [Year] DATE NULL, 
    [TermId] INT NULL, 
    [CreatedByUserDetailsId] INT NULL, 
    [DateAdded] DATETIME NULL, 
    [IsDeleted] BIT NULL, 
    [ImagePath] NVARCHAR(MAX) NULL, 
    [ImageCaption] NVARCHAR(MAX) NULL, 
    
    CONSTRAINT [FK_Question_ToSubjects] FOREIGN KEY ([SubjectId]) REFERENCES [Subjects]([Id]), 
    CONSTRAINT [FK_Question_ToUserDetails] FOREIGN KEY ([CreatedByUserDetailsId]) REFERENCES [UserDetails]([Id]), 
    CONSTRAINT [FK_Question_ToExamType] FOREIGN KEY ([ExamTypeId]) REFERENCES [ExamType]([Id]), 
    CONSTRAINT [FK_Question_ToTerms] FOREIGN KEY ([TermId]) REFERENCES [Term]([Id]) 
)

GO

CREATE INDEX [IX_Question_SubjectId] ON [dbo].[Question] ([SubjectId])

GO

CREATE INDEX [IX_Question_ExamType] ON [dbo].[Question] ([ExamTypeId])
