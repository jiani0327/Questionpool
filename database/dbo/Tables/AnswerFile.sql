CREATE TABLE [dbo].[AnswerFile] (
    [answerFile_id] INT           NOT NULL,
    [file_name]     VARCHAR (255) NOT NULL,
    [file_path]     VARCHAR (MAX) NOT NULL,
    [upload_path]   VARCHAR (MAX) NOT NULL,
    [user_upload]   VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_AnswerFile] PRIMARY KEY CLUSTERED ([answerFile_id] ASC)
);

