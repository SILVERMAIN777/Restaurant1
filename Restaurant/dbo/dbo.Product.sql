CREATE TABLE [dbo].[Product] (
    [ProdID]     INT          IDENTITY (1, 1) NOT NULL,
    [NProd]      VARCHAR (30) NOT NULL,
    [Kcal]       SMALLINT     NULL,
    [Expiration] DATE         NULL,
    PRIMARY KEY CLUSTERED ([ProdID] ASC)
);

