CREATE TABLE [dbo].[Caterer] (
    [CatID]   INT        IDENTITY (1, 1) NOT NULL,
    [NCat]    NCHAR (30) NULL,
    [City]    NCHAR (20) NULL,
    [Country] NCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([CatID] ASC)
);

