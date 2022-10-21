-- CLEANED TABLE--
SELECT 
p.[ProductKey],
p.[ProductAlternateKey] as ProductItemcode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
p.[EnglishProductName] as [Product Name],
ps.EnglishProductSubcategoryName as [Sub Category], -- Joined in from Sub category table--
pc.EnglishProductCategoryName as [Product Category], -- Joined in from Category table--
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
p.[Color] AS [Product Color],
      --,[SafetyStockLevel]
     -- ,[ReorderPoint]
      --,[ListPrice]
p.[Size] As [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
p.[ProductLine] as [Product Line],
      --,[DealerPrice]
      --,[Class]
     --,[Style]
p.[ModelName] as [Product Model Name],
      --,[LargePhoto]
p.[EnglishDescription] as [Product Desc],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
ISNULL (p.status,'Outdated') as [Product Status]
From
[dbo].[DimProduct] as p
left join dbo.DimProductSubCategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
left join dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
order by
p.productkey Asc