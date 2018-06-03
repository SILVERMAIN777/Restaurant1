CREATE TABLE [dbo].[Ingred] (
    [IngredID] INT            IDENTITY (1, 1) NOT NULL,
    [FoodID]   INT     NOT NULL,
    [ProdID]   INT     NOT NULL,
    [Name]     NCHAR (10)     NOT NULL,
    [WProd]    NUMERIC (7, 3) NOT NULL,
    PRIMARY KEY CLUSTERED ([IngredID] ASC), 
    CONSTRAINT [FK_Ingred_To_Food] FOREIGN KEY ([FoodID]) REFERENCES [Food]([FoodID]), 
    CONSTRAINT [FK_Ingred_To_Product] FOREIGN KEY ([ProdID]) REFERENCES [Product]([ProdID])
);

