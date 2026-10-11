SELECT SUM(Sq_Ft) AS [total square feet], Building_ID
FROM   Apartment
GROUP BY Building_ID
HAVING (Building_ID = 2)