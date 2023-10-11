CREATE TABLE [dbo].[Choice] (
    [questionid] INT  NOT NULL,
    [choice]     TEXT NOT NULL,
    CONSTRAINT [FK_Choice_question] FOREIGN KEY ([questionid]) REFERENCES [dbo].[question] ([question_id])
);


