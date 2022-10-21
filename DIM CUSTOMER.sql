--CLEANSED TABLE--
SELECT 
  c.customerKey as CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname as [FirstName], 
  --,[MiddleName]
  c.LastName as [LastName], 
  c.firstname + ' ' + LastName as[Full Name], --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender when 'M' then 'Male' when 'F' then 'Female' End as [Gender], 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
 c.datefirstpurchase as DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as [Customer City] --joined in customer from geography table-
from 
  dbo.dimcustomer as c 
  Left Join dbo.dimgeography as g on g.geographykey = c.geographykey 
order By 
  customerkey ASC
