CREATE TABLE [dbo].[Register] (
    [Id]  INT          NOT NULL IDENTITY,
    [firstname]    VARCHAR (50) NOT NULL,
    [lastname]     VARCHAR (50) NOT NULL,
    [gender]       NCHAR (10)   NOT NULL,
    [contact]      TEXT         NOT NULL,
    [email]        TEXT         NOT NULL,
    [password]     TEXT         NOT NULL,
    [status]       TINYINT      NOT NULL,
    [delete_flag]  TINYINT      NOT NULL,
    [date_created] DATETIME     NOT NULL,
    [date_updated] DATETIME     NULL,
    CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED ([Id] ASC)
);

