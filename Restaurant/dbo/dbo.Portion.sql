CREATE TABLE [dbo].[Portion] (
    [PortionID] INT            IDENTITY (1, 1) NOT NULL,
    [SDate]     DATETIME       NULL,
    [CountP]    NUMERIC (5, 2) NULL,
    [FoodID]    INT            NULL,
    PRIMARY KEY CLUSTERED ([PortionID] ASC)
);

