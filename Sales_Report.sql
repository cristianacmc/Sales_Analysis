/* Fact_InternetSales 2013 */

SELECT oh.[SalesOrderID]
      --,[RevisionNumber]
	   ,od.ProductID
	  --,pp.NamE
      ,FORMAT([OrderDate], 'MM') AS Month
	  ,FORMAT([OrderDate], 'yyyy') AS Year
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
      ,oh.SubTotal
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
  WHERE (OrderDate >= '2012-01-01') 
	AND (OrderDate <= '2014-12-31' ) 
	AND OnlineOrderFlag = 1
  ORDER BY Month, Year 




