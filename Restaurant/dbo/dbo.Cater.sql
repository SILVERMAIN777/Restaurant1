CREATE TABLE [dbo].[Cater] (
    [CaterID] INT            IDENTITY (1, 1) NOT NULL,
    [ProdID]  INT            NOT NULL,
    [CatID]   INT            NOT NULL,
    [CDate]   DATE           NOT NULL,
    [WCat]    NUMERIC (7, 3) NOT NULL,
    [Price]   MONEY          NOT NULL,
    PRIMARY KEY CLUSTERED ([CaterID] ASC),
    CONSTRAINT [FK_Cater_To_Product] FOREIGN KEY ([ProdID]) REFERENCES [dbo].[Product] ([ProdID]), 
    CONSTRAINT [FK_Cater_To_Caterer] FOREIGN KEY ([CatID]) REFERENCES [dbo].[Caterer]([CatID])
);

