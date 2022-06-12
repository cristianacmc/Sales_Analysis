/*Customers Report */

SELECT pp.[BusinessEntityID]
      ,pp.[FirstName]
      ,pp.[LastName]
	  ,pp.FirstName + ' ' + pp.LastName AS [Full Name]
	  ,a.City
	  --,a.StateProvinceID
	  ,sp.CountryRegionCode AS CountryCode
	  --,sp.TerritoryID
	  ,st.name AS Territory
	  ,st.[Group] AS TerritoryGroup
  FROM [Person].[Person] AS pp
  INNER JOIN Person.BusinessEntity AS be
	ON pp.BusinessEntityID = be.BusinessEntityID
  INNER JOIN Person.BusinessEntityAddress AS bea
	ON be.BusinessEntityID = bea.BusinessEntityID
  INNER JOIN Person.Address AS a
	ON a.AddressID = bea.AddressID
  INNER JOIN Person.StateProvince AS sp
	ON a.StateProvinceID = sp.StateProvinceID
  INNER JOIN sales.SalesTerritory st
	ON sp.TerritoryID = st.TerritoryID
ORDER BY st.[Group]


 

