CREATE TABLE [dbo].[Cater] (
    [CaterID] INT            IDENTITY (1, 1) NOT NULL,
    [ProdID]  INT            NOT NULL,
    [CatID]   INT            NOT NULL,
    [CDate]   DATE           NOT NULL,
    [WCat]    NUMERIC (7, 3) NOT NULL,
    [Price]   MONEY          NOT NULL,
    PRIMARY KEY CLUSTERED ([CaterID] ASC)
);

GO
CREATE TABLE [dbo].[Caterer] (
    [CatId]   INT        IDENTITY (1, 1) NOT NULL,
    [NCat]    NCHAR (30) NULL,
    [City]    NCHAR (20) NULL,
    [Country] NCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([CatId] ASC)
);

GO
CREATE TABLE [dbo].[Food] (
    [FoodID] INT            IDENTITY (1, 1) NOT NULL,
    [NFood]  NCHAR (50)     NOT NULL,
    [TypeID] INT            NOT NULL,
    [Margin] NUMERIC (6, 2) NULL,
    PRIMARY KEY CLUSTERED ([FoodID] ASC)
);

GO
CREATE TABLE [dbo].[Ingred] (
    [IngredID] INT            IDENTITY (1, 1) NOT NULL,
    [FoodID]   INT            NOT NULL,
    [ProdID]   INT            NOT NULL,
    [Name]     NCHAR (10)     NOT NULL,
    [WProd]    NUMERIC (7, 3) NOT NULL,
    PRIMARY KEY CLUSTERED ([IngredID] ASC)
);

GO
CREATE TABLE [dbo].[Portion] (
    [PortionID]    INT            IDENTITY (1, 1) NOT NULL,
    [SalesDate]    DATETIME       NULL,
    [CountPortion] NUMERIC (5, 2) NULL,
    [FoodID]       INT            NULL,
    PRIMARY KEY CLUSTERED ([PortionID] ASC)
);

GO
CREATE TABLE [dbo].[Product] (
    [ProdId]     INT          IDENTITY (1, 1) NOT NULL,
    [NProd]      VARCHAR (30) NOT NULL,
    [Kcal]       SMALLINT     NULL,
    [Expiration] DATE         NULL,
    PRIMARY KEY CLUSTERED ([ProdId] ASC)
);

GO
CREATE TABLE [dbo].[Recipe] (
    [FoodId] INT  NOT NULL,
    [Recipe] TEXT NULL,
    PRIMARY KEY CLUSTERED ([FoodId] ASC)
);

GO
CREATE TABLE [dbo].[TypeFood] (
    [TypeId] INT        IDENTITY (1, 1) NOT NULL,
    [NType]  NCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([TypeId] ASC)
);

GO
ALTER TABLE [dbo].[Cater]
    ADD CONSTRAINT [FK_Cater_To_Caterer] FOREIGN KEY ([CatID]) REFERENCES [dbo].[Caterer] ([CatId]);

GO
ALTER TABLE [dbo].[Cater]
    ADD CONSTRAINT [FK_Cater_To_Product] FOREIGN KEY ([ProdID]) REFERENCES [dbo].[Product] ([ProdId]);

GO
ALTER TABLE [dbo].[Food]
    ADD CONSTRAINT [FK_Food_To_TypeFood] FOREIGN KEY ([TypeID]) REFERENCES [dbo].[TypeFood] ([TypeId]);

GO
ALTER TABLE [dbo].[Ingred]
    ADD CONSTRAINT [FK_Ingred_To_Food] FOREIGN KEY ([FoodID]) REFERENCES [dbo].[Food] ([FoodID]);

GO
ALTER TABLE [dbo].[Ingred]
    ADD CONSTRAINT [FK_Ingred_To_Product] FOREIGN KEY ([ProdID]) REFERENCES [dbo].[Product] ([ProdId]);

GO
ALTER TABLE [dbo].[Recipe]
    ADD CONSTRAINT [FK_Recipe_To_Food] FOREIGN KEY ([FoodId]) REFERENCES [dbo].[Food] ([FoodID]);

GO
ALTER TABLE [dbo].[Portion]
    ADD CONSTRAINT [FK_Table_To_Food] FOREIGN KEY ([FoodID]) REFERENCES [dbo].[Food] ([FoodID]);

GO
