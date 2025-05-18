-- 1. Which customers placed more than one order?
SELECT C.C_Name, COUNT(O.Order_ID) AS 'Order Count'
FROM Customer C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID
HAVING COUNT(O.Order_ID) > 1;

-- 2. What is the total sales handled by each employee?
SELECT E.E_NAME, SUM(O.TotalAmount) AS 'Total Sales'
FROM Employee E
JOIN Orders O ON E.Employee_ID = O.Employee_ID
GROUP BY E.Employee_ID;

-- 3. Which vinyl record was ordered the most?
SELECT V.Title, V.Artist, COUNT(O.Order_ID) AS `Order Count`
FROM Vinyl_Record V
JOIN Orders O ON V.Record_ID = O.Record_ID
GROUP BY V.Record_ID
ORDER BY `Order Count` DESC
LIMIT 1;

-- 4. What is the average price of record by genre?
SELECT Genre, AVG(Price) AS `Average Price`
FROM Vinyl_Record
GROUP BY Genre;

-- 5. Find the earliest vinyl released?
SELECT Title, Artist, Year
FROM Vinyl_Record
WHERE Stock > 0
ORDER BY Year ASC
LIMIT 1;

-- 6. Which genre has the most records in stock?
SELECT Genre, SUM(Stock) AS `Total Stock`
FROM Vinyl_Record
GROUP BY Genre
ORDER BY `Total Stock` DESC
LIMIT 1;

-- 7. Which customer spent the most money in total?
SELECT C.C_Name, SUM(O.TotalAmount) AS `Total Spent`
FROM Customer C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID
ORDER BY `Total Spent` DESC
LIMIT 1;

-- 8. Which record genre generated the lowest sale?
SELECT V.Genre, SUM(O.TotalAmount) AS `Revenue`
FROM Orders O
JOIN Vinyl_Record V ON O.Record_ID = V.Record_ID
GROUP BY V.Genre
ORDER BY `Revenue` ASC
LIMIT 1;

-- 9. Which customers have orders with a shipped or delivered order status?
SELECT C.C_Name, S.ShippingStatus, S.TrackingNumber
FROM Shipping S
JOIN Orders O ON S.Order_ID = O.Order_ID
JOIN Customer C ON O.Customer_ID = C.Customer_ID
WHERE S.ShippingStatus = 'Shipped';

-- 10. Show each sutomer's last order, including their total amount and employye who fulfilled the order.
SELECT C.C_Name, O.OrderDate, O.TotalAmount, E.E_Name AS `Fulfilled By`
FROM Customer C
JOIN Orders O ON C.Customer_ID = O.Customer_ID
JOIN Employee E ON O.Employee_ID = E.Employee_ID
WHERE O.OrderDate= (
		Select MAX(O2.OrderDate)
		FROM Orders O2
        Where O2.Customer_ID = C.Customer_ID
		);

-- Views
-- What is the average price of record by genre?
CREATE VIEW view_average_price AS
SELECT Genre, AVG(Price) AS `Average Price`
FROM Vinyl_Record
GROUP BY Genre;

-- What is the total sales handled by each employee?
CREATE VIEW `Employee Total Sales` AS
SELECT E.E_NAME, SUM(O.TotalAmount) AS 'Total Sales'
FROM Employee E
JOIN Orders O ON E.Employee_ID = O.Employee_ID
GROUP BY E.Employee_ID;





