SELECT  Person.First_Name, Person.Middle_Initial, Person.Last_Name, MAX(Apartment.Rent) AS [most expensive rent]
FROM   Apartment INNER JOIN
				Person ON Apartment.Tenant_ID = Person.Person_ID
GROUP BY Person.First_Name, Person.Middle_Initial, Person.Last_Name
ORDER BY [most expensive rent] DESC