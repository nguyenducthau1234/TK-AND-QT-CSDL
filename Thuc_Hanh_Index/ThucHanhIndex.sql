-- NoIndex
SELECT *INTO dbo.DimProduct_NoIndex FROM dbo.DimProduct
SELECT ProductKey, ProductAlternateKey FROM dbo.DimProduct_NoIndex WHERE ProductKey = 600

-- Index
SELECT *INTO dbo.DimProduct_Index FROM dbo.DimProduct GO 
CREATE INDEX Idx_DimProduc_Index_ProductKey ON dbo.DimProduct_Index(ProductKey)

SELECT ProductKey, ProductAlternateKey FROM dbo.DimProduct_Index WHERE ProductKey = 600

-- CLUSTERED

SELECT * INTO dbo.ProspectiveBuyer_CLUSTERED FROM dbo.ProspectiveBuyer GO
CREATE CLUSTERED INDEX AX_ProspectiveBuyer_ProspectiveBuyerKey
ON dbo.ProspectiveBuyer (ProspectiveBuyerKey)

-- NONCLUSTERED
SELECT * INTO dbo.ProspectiveBuyer_NONCLUSTERED FROM dbo.ProspectiveBuyer GO
CREATE NONCLUSTERED INDEX IX_ProspectiveBuyer_ProspectiveBuyerKey
ON dbo.ProspectiveBuyer (ProspectiveBuyerKey)

SELECT ProspectiveBuyerKey, ProspectAlternateKey FROM dbo.ProspectiveBuyer_NONCLUSTERED WHERE ProspectiveBuyerKey = 978
SELECT ProspectiveBuyerKey, ProspectAlternateKey FROM dbo.ProspectiveBuyer_CLUSTERED WHERE ProspectiveBuyerKey = 978