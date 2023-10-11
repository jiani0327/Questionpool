CREATE TABLE [dbo].[subjects] (
    [subject_id]   INT           NOT NULL,
    [name]         VARCHAR (255) NOT NULL,
    [description]  VARCHAR (MAX) NOT NULL,
    [status_id]    TINYINT       NOT NULL,
    [user_id]      INT           NOT NULL,
    [subject_code] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_subjects] PRIMARY KEY CLUSTERED ([subject_id] ASC),
    CONSTRAINT [FK_subjects_uploadstatus] FOREIGN KEY ([status_id]) REFERENCES [dbo].[uploadstatus] ([status_id]),
    CONSTRAINT [FK_subjects_user] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([user_id])
);


