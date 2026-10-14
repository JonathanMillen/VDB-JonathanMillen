SELECT SUM(Receipt.ReceiptAmount) AS Total, Building.Building_Name, Apartment_1.Apt_Number, Person.Last_Name, Person.First_Name
FROM   Apartment AS Apartment_1 INNER JOIN
             Building ON Apartment_1.Building_ID = Building.Building_ID INNER JOIN
             Person ON Apartment_1.Tenant_ID = Person.Person_ID INNER JOIN
             Invoice ON Apartment_1.Apartment_ID = Invoice.Apartment_ID INNER JOIN
             Receipt ON Invoice.InvoiceID = Receipt.Invoice_ID
GROUP BY Building.Building_Name, Apartment_1.Apt_Number, Person.Last_Name, Person.First_Name