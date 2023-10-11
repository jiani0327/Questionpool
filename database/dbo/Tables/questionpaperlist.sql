CREATE TABLE [dbo].[questionpaperlist] (
    [questionpaper_id] INT           NOT NULL,
    [paper_name]       VARCHAR (255) NOT NULL,
    [description]      VARCHAR (MAX) NOT NULL,
    [duration]         TIME (7)      NOT NULL,
    [user_id]          INT           NOT NULL,
    [status_id]        TINYINT       NOT NULL,
    [subject_id]       INT           NOT NULL,
    CONSTRAINT [PK_questionpaperlist] PRIMARY KEY CLUSTERED ([questionpaper_id] ASC),
    CONSTRAINT [FK_questionpaperlist_questionpaperlist] FOREIGN KEY ([status_id]) REFERENCES [dbo].[uploadstatus] ([status_id]),
    CONSTRAINT [FK_questionpaperlist_subjects] FOREIGN KEY ([subject_id]) REFERENCES [dbo].[subjects] ([subject_id]),
    CONSTRAINT [FK_questionpaperlist_user] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([user_id])
);

