/* Territory Sales in 2013 */

SELECT   st.TerritoryID
		,soh.SalesOrderID
        ,[Name] AS Region 
        ,[CountryRegionCode] AS CountryCode 
        ,[Group] 
		,soh.SubTotal AS TotalSales 
FROM [Sales].[SalesTerritory] AS st 
LEFT JOIN sales.SalesOrderHeader AS soh 
	ON soh.TerritoryID = st.TerritoryID 
	WHERE soh.OrderDate between '2012-01-01' 
	AND '2014-12-31'  
ORDER BY TotalSales DESC



