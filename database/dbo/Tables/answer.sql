CREATE TABLE [dbo].[answer] (
    [answer_id]     INT           NOT NULL,
    [question_id]   INT           NOT NULL,
    [answer_text]   TEXT          NOT NULL,
    [user_upload]   VARCHAR (MAX) NOT NULL,
    [answerFile_id] INT           NOT NULL,
    CONSTRAINT [PK_answer] PRIMARY KEY CLUSTERED ([answer_id] ASC),
    CONSTRAINT [FK_answer_AnswerFile] FOREIGN KEY ([answerFile_id]) REFERENCES [dbo].[AnswerFile] ([answerFile_id]),
    CONSTRAINT [FK_answer_question] FOREIGN KEY ([question_id]) REFERENCES [dbo].[question] ([question_id])
);

