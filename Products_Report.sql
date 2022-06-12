
SELECT [ProductID]
        ,pp.Name
      --,[ProductNumber]
      --,[MakeFlag]
      --,[FinishedGoodsFlag]
      --,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      ,[StandardCost]
      ,[ListPrice]
      --,[Size]
      --,[SizeUnitMeasureCode]
      --,[WeightUnitMeasureCode]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[Class]
      --,[Style]
      --,[ProductSubcategoryID]
      --,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      --,[DiscontinuedDate]
      --,[rowguid]
      --,[ModifiedDate]
	    ,ps.Name AS Subcategory
		,pc.Name AS Category
		,pm.Name AS Model
		--,pd.Description
  FROM [Production].[Product] AS pp
  LEFT JOIN Production.ProductSubcategory AS ps
	ON pp.ProductSubcategoryID = ps.ProductSubcategoryID
  LEFT JOIN Production.ProductCategory AS pc
	ON ps.ProductCategoryID = pc.ProductCategoryID
  LEFT JOIN Production.ProductModel AS pm
	ON pp.ProductModelID = pm.ProductModelID 
  --INNER JOIN Production.ProductModelProductDescriptionCulture AS pdc
	--ON pm.ProductModelID = pdc.ProductModelID
  --INNER JOIN Production.ProductDescription AS pd
	--ON pdc.ProductDescriptionID  = pd.ProductDescriptionID
 




