CREATE TABLE [dbo].[QuestionAnswers]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Answer] NVARCHAR(MAX) NULL, 
    [QuestionId] INT NULL, 
    [ChosenChoiceId] INT NULL, 
    [ImagePath] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_QuestionAnswers_ToQuestion] FOREIGN KEY ([QuestionId]) REFERENCES [Question]([Id]), 
    CONSTRAINT [FK_QuestionAnswers_ToQuestionChoice] FOREIGN KEY ([ChosenChoiceId]) REFERENCES [QuestionChoice]([Id]), 
)

GO

CREATE INDEX [IX_QuestionAnswers_QuestionId] ON [dbo].[QuestionAnswers] ([QuestionId])
