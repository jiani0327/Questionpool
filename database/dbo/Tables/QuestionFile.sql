CREATE TABLE [dbo].[QuestionFile] (
    [questionFile_id] INT           NOT NULL,
    [file_name]       VARCHAR (MAX) NOT NULL,
    [file_path]       VARCHAR (255) NOT NULL,
    [upload_date]     DATETIME      NOT NULL,
    [upload_path]     VARCHAR (MAX) NOT NULL,
    [user_upload]     VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_QuestionFile] PRIMARY KEY CLUSTERED ([questionFile_id] ASC)
);

