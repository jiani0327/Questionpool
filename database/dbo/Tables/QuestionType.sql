CREATE TABLE [dbo].[QuestionType] (
    [type_id]   INT           NOT NULL,
    [type_name] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED ([type_id] ASC)
);

