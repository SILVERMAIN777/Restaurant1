CREATE TABLE [dbo].[Food] (
    [FoodID] INT            IDENTITY (1, 1) NOT NULL,
    [NFood]  NCHAR (50)     NOT NULL,
    [TypeID] INT            NOT NULL,
    [Margin] NUMERIC (6, 2) NULL,
    PRIMARY KEY CLUSTERED ([FoodID] ASC),
    CONSTRAINT [FK_Food_To_TypeFood] FOREIGN KEY ([TypeID]) REFERENCES [dbo].[TypeFood] ([TypeId])
);


GO
