CREATE TABLE [dbo].[uploadstatus] (
    [status_id]    TINYINT       NOT NULL,
    [name]         VARCHAR (50)  NOT NULL,
    [delete_flag]  TINYINT       NOT NULL,
    [date_added]   DATETIME      NOT NULL,
    [date_created] DATETIME      NOT NULL,
    [date_updated] DATETIME      NULL,
    [download]     VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_uploadstatus] PRIMARY KEY CLUSTERED ([status_id] ASC)
);

