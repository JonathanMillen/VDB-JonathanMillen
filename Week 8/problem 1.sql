SELECT Building.Building_ID, Building.Building_Name, Apartment.Apt_Number, Person.First_Name, Person.Last_Name
FROM   Building INNER JOIN
             Apartment ON Building.Building_ID = Apartment.Building_ID INNER JOIN
             Person ON Apartment.Manager_ID = Person.Person_ID
ORDER BY Building.Building_Name, Apartment.Apt_Number, Person.Last_Name, Person.First_Name