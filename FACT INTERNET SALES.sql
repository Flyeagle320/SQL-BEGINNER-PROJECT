--CLEANED DATA--
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --[PromotionKey], 
  --[CurrencyKey], 
  --[SalesTerritoryKey], 
  [SalesOrderNumber], 
  --[SalesOrderLineNumber], 
  --[RevisionNumber], 
  --[OrderQuantity], 
  --[UnitPrice], 
  --[ExtendedAmount], 
  --[UnitPriceDiscountPct], 
  --[DiscountAmount], 
  --  [ProductStandardCost], 
  --[TotalProductCost], 
  [SalesAmount] 
  -- [TaxAmt], 
  -- [Freight], 
  -- [CarrierTrackingNumber], 
  --[CustomerPONumber], 
  -- [OrderDate], 
  -- [DueDate], 
  -- [ShipDate] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 --To get 2 year back data from extraction date-
ORDER BY 
  OrderDateKey Asc