CREATE TABLE [dbo].[register] (
    [register_id]  INT          NOT NULL,
    [firstname]    VARCHAR (50) NOT NULL,
    [lastname]     VARCHAR (50) NOT NULL,
    [gender]       NCHAR (10)   NOT NULL,
    [contact]      TEXT         NOT NULL,
    [email]        TEXT         NOT NULL,
    [password]     TEXT         NOT NULL,
    [avatar]       TEXT         NOT NULL,
    [status]       TINYINT      NOT NULL,
    [delete_flag]  TINYINT      NOT NULL,
    [date_created] DATETIME     NOT NULL,
    [date_updated] DATETIME     NULL,
    CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED ([register_id] ASC)
);

