SELECT  COUNT(Apartment.Apartment_ID) AS [Apartments managed by], Person.First_Name, Person.Last_Name
FROM   Apartment INNER JOIN
				Person ON Apartment.Manager_ID = Person.Person_ID
GROUP BY  Person.First_Name, Person.Last_Name
HAVING (Person.First_Name = N'Mark') AND (Person.Last_Name = N'Degallier')