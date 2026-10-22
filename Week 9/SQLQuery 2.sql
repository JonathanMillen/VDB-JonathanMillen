SELECT Person.First_Name + Person.Last_Name AS [Tenant Name], Address.Street_1 + Apartment.Apt_Number AS Apt, Address.City + Address.State + CAST(Address.Zip AS Varchar(5)) AS Location
FROM   Person INNER JOIN
             Apartment ON Person.Person_ID = Apartment.Tenant_ID INNER JOIN
             Address ON Person.Address_ID = Address.Address_ID
ORDER BY Person.Last_Name, Person.First_Name