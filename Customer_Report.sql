/*Customers Report*/

SELECT pp.BusinessEntityID AS PersonID
      ,pp.[FirstName]
      ,pp.[LastName]
	  ,pp.FirstName + ' ' + pp.LastName AS [Full Name]
	  ,pa.City
	  --,a.StateProvinceID
	  --,sp.CountryRegionCode AS CountryCode
	  --,sp.TerritoryID
	  --,st.name AS Territory
	  --,st.[Group] AS TerritoryGroup
  FROM Person.Person AS pp
  INNER JOIN Person.BusinessEntityAddress ba
	ON pp.BusinessEntityID = ba.BusinessEntityID
  INNER JOIN Person.Address AS pa
	ON ba.AddressID = pa.AddressID



 

