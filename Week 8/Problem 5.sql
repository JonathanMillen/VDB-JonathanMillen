SELECT Invoice.InvoiceID, Building.Building_ID, Apartment.Apt_Number, Person.Last_Name, Person.First_Name, Receipt.ReceiptAmount
FROM   Receipt INNER JOIN
             Invoice ON Receipt.Invoice_ID = Invoice.InvoiceID INNER JOIN
             Apartment ON Invoice.Apartment_ID = Apartment.Apartment_ID INNER JOIN
             Person ON Apartment.Tenant_ID = Person.Person_ID INNER JOIN
             Building ON Apartment.Building_ID = Building.Building_ID
ORDER BY Person.Last_Name, Person.First_Name