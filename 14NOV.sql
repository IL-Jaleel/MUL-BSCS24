

select p.FirstName FN, p.LastName, S.SalesQuota,s.SalesYTD, 
SalesYTD-SalesQuota SalesVariance,

CASE 
WHEN SalesYTD-SalesQuota > 0 THEN 'YES'
WHEN SalesYTD-SalesQuota < 0 THEN 'NO'
ELSE 'N/A'
END SalesQuota
from Sales.SalesPerson s
inner join Person.person p
on p.businessentityid=s.businessentityid

