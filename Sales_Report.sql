/* Online Report Sales 2013 */

SELECT --[SalesOrderID]
      --,[RevisionNumber]
	   od.ProductID
	  ,pp.Name
      ,FORMAT([OrderDate], 'dd-MM-yyyy') AS OrderDate
      ,FORMAT([DueDate], 'dd-MM-yyyy') AS DueDate
      ,FORMAT([ShipDate], 'dd-MM-yyyy') AS ShipDate
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      --,[PurchaseOrderNumber]
      --,[AccountNumber]
      ,[CustomerID]
      --,[SalesPersonID]
      --,[TerritoryID]
      --,[BillToAddressID]
      --,[ShipToAddressID]
      --,[ShipMethodID]
      --,[CreditCardID]
      --,[CreditCardApprovalCode]
      --,[CurrencyRateID]
      ,[SubTotal]
      --,[TaxAmt]
      --,[Freight]
      --,[TotalDue]
      --,[Comment]
      --,[rowguid]
      --[ModifiedDate]
  FROM [Sales].[SalesOrderHeader] AS oh
  LEFT JOIN SALES.SalesOrderDetail AS od
	ON oh.SalesOrderID = od.SalesOrderID
  LEFT JOIN Production.Product AS pp
	ON od.ProductID = pp.ProductID
  WHERE (OrderDate >= '2013-01-01') 
	AND (OrderDate <= '2013-12-31' ) 
	AND OnlineOrderFlag = 1
  ORDER BY subtotal Desc




