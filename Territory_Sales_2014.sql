/* Territory Sales in 2014 */

SELECT [Name] AS Region 
        ,[CountryRegionCode] AS CountryCode 
        ,[Group] ,SUM(soh.SubTotal) TotalSales 
FROM [Sales].[SalesTerritory] AS st 
LEFT JOIN sales.SalesOrderHeader AS soh 
ON soh.TerritoryID = st.TerritoryID 
WHERE soh.OrderDate between '2013-01-01' 
AND '2014-12-31' GROuP BY [Name], [CountryRegionCode], [Group] 
ORDER BY TotalSales DESC



