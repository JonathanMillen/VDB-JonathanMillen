SELECT Person.Person_ID, Person.Last_Name, Person.First_Name, Building.Building_Name, Apartment.Apt_Number
FROM   Person INNER JOIN
             Apartment ON Person.Person_ID = Apartment.Tenant_ID INNER JOIN
             Building ON Apartment.Building_ID = Building.Building_ID
ORDER BY Person.Last_Name, Person.First_Name, Building.Building_Name, Apartment.Apt_Number