CREATE TABLE [dbo].[user] (
    [user_id]     INT           NOT NULL,
    [firstname]   VARCHAR (50)  NOT NULL,
    [lastname]    VARCHAR (50)  NOT NULL,
    [username]    TEXT          NOT NULL,
    [email]       VARCHAR (50)  NOT NULL,
    [password]    TEXT          NOT NULL,
    [avatar]      TEXT          NULL,
    [phonenumber] INT           NOT NULL,
    [schoolname]  VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED ([user_id] ASC)
);


