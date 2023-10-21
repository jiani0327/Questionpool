CREATE TABLE [dbo].[UserDetails]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AspNetUserId] NVARCHAR(450) NULL, 
    [FullName] NVARCHAR(MAX) NULL, 
    [DepartmentId] INT NULL, 
    CONSTRAINT [FK_UserDetails_ToDepartment] FOREIGN KEY ([DepartmentId]) REFERENCES [Departments]([Id]), 
    CONSTRAINT [FK_UserDetails_ToAspNetUser] FOREIGN KEY ([AspNetUserId]) REFERENCES [AspNetUsers]([Id])
)

GO

CREATE INDEX [IX_UserDetails_DepartmentId] ON [dbo].[UserDetails] ([DepartmentId])
