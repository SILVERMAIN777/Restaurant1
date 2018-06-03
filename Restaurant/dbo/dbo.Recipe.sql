CREATE TABLE [dbo].[Recipe] (
    [FoodID] INT  NOT NULL,
    [Recipe] TEXT NULL,
    PRIMARY KEY CLUSTERED ([FoodID] ASC),
    CONSTRAINT [FK_Recipe_To_Food] FOREIGN KEY ([FoodID]) REFERENCES [dbo].[Food] ([FoodID])
);

