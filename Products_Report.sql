/* Prdducts Table */
SELECT [ProductID]
        ,pp.Name
	    ,ps.Name AS Subcategory
		,pc.Name AS Category
		,pm.Name AS Model
		,pd.Description
      --,[ProductNumber]
      --,[MakeFlag]
      --,[FinishedGoodsFlag]
      --,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      ,[StandardCost]
      ,[ListPrice] as Selling_Price
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
      ,FORMAT([SellStartDate], 'dd-MM-yyyy') AS SellStartDate
      ,FORMAT([SellEndDate], 'dd-MM-yyy') AS SellEndDate
      --,[DiscontinuedDate]
      --,[rowguid]
      --[ModifiedDate]
  FROM [Production].[Product] AS pp
  LEFT JOIN Production.ProductSubcategory AS ps
	ON pp.ProductSubcategoryID = ps.ProductSubcategoryID
  LEFT JOIN Production.ProductCategory AS pc
	ON ps.ProductCategoryID = pc.ProductCategoryID
  LEFT JOIN Production.ProductModel AS pm
	ON pp.ProductModelID = pm.ProductModelID 
 INNER JOIN Production.ProductModelProductDescriptionCulture AS pdc
	ON pm.ProductModelID = pdc.ProductModelID
  INNER JOIN Production.ProductDescription AS pd
	ON pdc.ProductDescriptionID  = pd.ProductDescriptionID
WHERE pp.FinishedGoodsFlag = 1 AND pdc.CultureID = 'en'




