CREATE TABLE [dbo].[question] (
    [question_id]      INT           NOT NULL,
    [question_text]    TEXT          NOT NULL,
    [type_id]          INT           NOT NULL,
    [mark]             INT           NOT NULL,
    [difficulty]       VARCHAR (50)  NOT NULL,
    [questionpaper_id] INT           NOT NULL,
    [subject_id]       INT           NOT NULL,
    [status_id]        TINYINT       NOT NULL,
    [timeframe]        DATETIME      NOT NULL,
    [questionFile_id]  INT           NOT NULL,
    [user_upload]      VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED ([question_id] ASC),
    CONSTRAINT [FK_question_question] FOREIGN KEY ([type_id]) REFERENCES [dbo].[QuestionType] ([type_id]),
    CONSTRAINT [FK_question_QuestionFile] FOREIGN KEY ([questionFile_id]) REFERENCES [dbo].[QuestionFile] ([questionFile_id]),
    CONSTRAINT [FK_question_subjects] FOREIGN KEY ([subject_id]) REFERENCES [dbo].[subjects] ([subject_id]),
    CONSTRAINT [FK_question_uploadstatus] FOREIGN KEY ([status_id]) REFERENCES [dbo].[uploadstatus] ([status_id])
);

