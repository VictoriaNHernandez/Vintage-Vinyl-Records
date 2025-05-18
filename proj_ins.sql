-- Insert into customer table.
INSERT INTO CUSTOMER(Customer_ID, C_Name, C_Email, C_Phone, C_Address) VALUES
('12345', 'Eva Smith', 'e.smith@gmail.com', '2401112345', '123 Oak Lane'),
('14563', 'Kathy Adams', 'k.adams@gmail.com', '3014456785','798 Pine Blvd'),
('15262', 'Brent Johnson', 'b.johnson@gmail.com', '3012387627', '654 York Road'), 
('18654', 'Kevin Baker', 'k.baker@gmail.com', '2407652312', '176 Maple Street'),
('17263', 'Steve Jackson', 's.adams@gmail.com', '2408576431', '392 Washington Ave');

-- Insert into employee table.
INSERT INTO Employee(Employee_ID, E_Name, E_Role , E_Phone, E_Email)VALUES
('728312', 'Carl Young', 'Manager', '4439653421', 'c.young@gmail.com'),
('734521', 'Liam Anderson', 'Associate', '4439203823', 'l.anderson@gmail.com'),
('782931', 'Sophia Carter', 'Associate', '2405552312','s.carter@gmail.com'),
('723042', 'Noah Bennet', 'Associate', '2548395304', 'n.bennet@gmail.com'),
('719283', 'Kyle Reed', 'Associate', '4432923234', 'k.reed@gmail.com');

-- Insert into vinyl record table.
INSERT INTO Vinyl_Record(Record_ID, Title, Artist, Genre, Year, `Condition`, Price , Stock) VALUES
('1000', 'Renaissance', 'Beyonce', 'House', '2022', 'New', '39.99', '5'),
('1001', 'Short n Sweet', 'Sabrina Carpenter','Pop', '2024', 'New', '35.98', '8'),
('1002', 'Rubber Soul', 'The Beatles', 'Rock', '1965', 'Good', '260.99', '2'),
('1003', 'Channel Orange', 'Frank Ocean', 'R&B', '2012', 'Very Good', 300.00, '1'),
('1004', 'Hit Me Hard and Soft', 'Billie Eilish', 'Pop', '2024', 'New', '34.99', '10'),
('1005', 'GNX', 'Kendrick Lamar', 'Hip-hop', '2024', 'New', '40.00', '3'),
('1006', 'Sign O The Times', 'Prince', 'Pop', '1987', 'Used', '523.00', '1'),
('1007', 'Meddle Australian', 'Pink Floyd', 'Rock', '1971', 'Used','169.99','2');

-- Insert into orders table.
INSERT INTO Orders(Order_ID, Customer_ID, Record_ID, Employee_ID, OrderDate , Status, TotalAmount , SaleType)VALUES
('2000', '12345', '1000', '734521', DEFAULT, 'Processing', '39.99', 'Online'),
('2001', '12345', '1001', '782931', DEFAULT, 'Delivered', '35.98', 'Online'),
('2002', '14563', '1003', '782931', DEFAULT, 'Completed', '300.00', 'In person'),
('2003', '15262', '1004', '723042', DEFAULT, 'Completed', '34.99', 'In Person'),
('2004', '18654', '1005', '719283', DEFAULT, 'Shipped', '40.00', 'Online'),
('2005', '17263', '1006', '719283', DEFAULT, 'Delivered', '523.00', 'Online'),
('2006', '17263', '1007', '723042', DEFAULT, 'Completed', '169.99', 'In Person'),
('2007', '15262', '1007', '728312', DEFAULT, 'Shipped', '169.99', 'Online'),
('2008', '18654', '1002', '719283', DEFAULT, 'Completed', '260.99', 'In Person'),
('2009', '14563', '1004', '723042', DEFAULT, 'Processing', '34.99', 'Online');

-- Insert into payment table.
INSERT INTO Payment(Payment_ID , Order_ID, PaymentMethod, TransactionDate, Amount) VALUES
('3000', '2000', 'Credit Card', DEFAULT, '39.99'),
('3001', '2001', 'Paypal', DEFAULT, '35.98'),
('3002', '2002', 'Credit Card', DEFAULT, '300.00'),
('3003', '2003', 'Cash', DEFAULT, '34.99'),
('3004', '2004', 'Debit Card', DEFAULT, '40.00'),
('3005', '2005', 'Credit Card', DEFAULT, '523.00'),
('3006', '2006', 'Credit Crad', DEFAULT, '169.99'),
('3007', '2007', 'Credit Card', DEFAULT, '169.99'),
('3008', '2008', 'Credit Card', DEFAULT, '260.99'),
('3009', '2009', 'Debit Card', DEFAULT, '34.99');

-- Insert into shipping table.
INSERT INTO Shipping (Shipping_ID, Order_ID, ShippingAddress, ShippingStatus, TrackingNumber)VALUES 
('4001', '2000', '123 Oak Lane', 'Processing', '1234567890'),
('4002', '2001', '123 Oak Lane', 'Delivered', '1328479329'),
('4003', '2004', '176 Maple Street', 'Shipped', '1485938492'),
('4004', '2005', '392 Washington Ave', 'Delivered', '1592837400'),
('4005', '2007', '654 York Road', 'Shipped', '167283946'),
('4006', '2009', '798 Pine Blvd', 'Processing', '178293847');

-- Insert into manages table.
INSERT INTO Manages(Employee_ID, Record_ID, ManageDate, Note)VALUES	
('728312', '1000', DEFAULT, 'Replaced damaged cover.'),
('734521', '1001', DEFAULT, 'Restocked from shipment.'),
('782931', '1002', DEFAULT, 'Updated price.'),
('723042', '1004', DEFAULT, 'Updated condition.'),
('719283', '1007', DEFAULT, 'Replaced damaged cover.');






