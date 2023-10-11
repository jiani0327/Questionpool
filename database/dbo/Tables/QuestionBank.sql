CREATE TABLE [dbo].[QuestionBank] (
    [question_id]      INT NOT NULL,
    [questionpaper_id] INT NOT NULL,
    [question_order]   INT NOT NULL,
    CONSTRAINT [PK_QuestionBank] PRIMARY KEY CLUSTERED ([question_id] ASC),
    CONSTRAINT [FK_QuestionBank_question] FOREIGN KEY ([question_id]) REFERENCES [dbo].[question] ([question_id]),
    CONSTRAINT [FK_QuestionBank_questionpaperlist] FOREIGN KEY ([questionpaper_id]) REFERENCES [dbo].[questionpaperlist] ([questionpaper_id])
);

