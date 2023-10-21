CREATE TABLE [dbo].[QuestionChoice]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [QuestionId] INT NULL, 
    [ChoiceText] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_QuestionChoice_ToQuestion] FOREIGN KEY ([QuestionId]) REFERENCES [Question]([Id])
)

GO

CREATE INDEX [IX_QuestionChoice_QuestionId] ON [dbo].[QuestionChoice] ([QuestionId])
