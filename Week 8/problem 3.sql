SELECT Apartment.Apt_Number, Person.Last_Name, Person.First_Name, Invoice.InvoiceID, Building.Building_ID, Product.Description, Product.Price, LineItem.Qty
FROM   Invoice INNER JOIN
             Apartment ON Invoice.Apartment_ID = Apartment.Apartment_ID INNER JOIN
             Person ON Apartment.Tenant_ID = Person.Person_ID INNER JOIN
             Building ON Apartment.Building_ID = Building.Building_ID INNER JOIN
             LineItem ON Invoice.InvoiceID = LineItem.Invoice_ID INNER JOIN
             Product ON LineItem.Product_ID = Product.Product_ID
WHERE (Building.Building_ID = 1)
ORDER BY Apartment.Apt_Number, Person.Last_Name, Person.First_Name, Invoice.InvoiceID