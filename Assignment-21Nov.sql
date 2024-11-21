select PSC.Name, count(SH.SalesOrderID) AS ORDER_COUNT 
from Sales.SalesOrderHeader sh
inner join Sales.SalesOrderDetail SO on SH.SalesOrderID = SO.SalesOrderID
inner join Production.[Product] P ON P.ProductID =  SO.ProductID
inner join Production.ProductSubcategory PC ON P.ProductSubcategoryID =
PC.ProductSubcategoryID
inner join Production.ProductCategory PSC ON PSC.ProductCategoryID 
= PC.ProductCategoryID
group by PSC.Name



------------------Question N0: 2 ---------------------


select ST.name, SUM(SH.TOTALDUE) AS 'Total Sales Amount' from Sales.SalesOrderHeader SH 
INNER JOIN Sales.SalesTerritory ST ON SH.TerritoryID = ST.TerritoryID
GROUP BY 
ST.name




