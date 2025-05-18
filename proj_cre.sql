-- Create Customer Table
CREATE TABLE CUSTOMER(
	Customer_ID INT NOT NULL, -- Primary key
    C_Name VARCHAR(100) NOT NULL,
    C_Email VARCHAR(100) NOT NULL,
    C_Phone VARCHAR(10) NOT NULL,
    C_Address VARCHAR(100) NOT NULL,
    CONSTRAINT C_PK PRIMARY KEY(Customer_ID)
);
-- Create Employee Table
CREATE TABLE Employee(
	Employee_ID INT NOT NULL, -- primary key
    E_Name VARCHAR(100) NOT NULL,
    E_Role VARCHAR(100) NOT NULL,
	E_Phone VARCHAR(10) NOT NULL,
	E_Email VARCHAR(100) NOT NULL,
	CONSTRAINT E_PK PRIMARY KEY (Employee_ID) 
);
-- Create Vinyl Record table
CREATE TABLE Vinyl_Record(
Record_ID INT NOT NULL, -- Primary key
Title VARCHAR(100) NOT NULL,
Artist VARCHAR(100) NOT NULL,
Genre VARCHAR(50) NOT NULL,
Year INT NOT NULL,
`Condition` VARCHAR (50) NOT NULL,
Price INT NOT NULL,
Stock INT NOT NULL,
CONSTRAINT V_PK PRIMARY KEY(Record_ID),
CONSTRAINT R_Price CHECK (Price >= 10.00 AND Price <= 800.00), -- Constraint
CONSTRAINT R_Year CHECK (Year BETWEEN 1930 AND 2025) -- Constraint
);
-- Create Orders table
CREATE TABLE `Orders` (
Order_ID INT NOT NULL, -- Primary key
Customer_ID INT NOT NULL,
Record_ID INT NOT NULL,
Employee_ID INT NOT NULL,
OrderDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
Status VARCHAR (50) NOT NULL,
TotalAmount NUMERIC (8, 2) NOT NULL,
SaleType VARCHAR (15) NOT NULL,
CONSTRAINT O_PK PRIMARY KEY (Order_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID), -- Foreign key
FOREIGN KEY (Record_ID) REFERENCES Vinyl_Record (Record_ID), -- Foreign key
FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID), -- Foreign key
CONSTRAINT O_TotalAmount CHECK(TotalAmount >= 10.00), -- constraint
CONSTRAINT O_SaleType CHECK(SaleType IN ('Online', 'In Person')) -- constraint
);
-- Create Payment Table
CREATE TABLE Payment (
Payment_ID INT NOT NULL, -- Primary Key
Order_ID INT NOT NULL,
PaymentMethod VARCHAR (15),
TransactionDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
Amount NUMERIC(8, 2) NOT NULL,
CONSTRAINT P_PK PRIMARY KEY (Payment_ID),
FOREIGN KEY (Order_ID) REFERENCES Orders (Order_ID) --  constraint
);
-- Create shipping table
CREATE TABLE Shipping(
Shipping_ID INT NOT NULL, -- Primary key
Order_ID INT NOT NULL,
ShippingAddress VARCHAR(100) NOT NULL,
ShippingStatus VARCHAR(50) NOT NULL,
TrackingNumber VARCHAR(100) NOT NULL,
CONSTRAINT S_PK PRIMARY KEY (Shipping_ID),
FOREIGN KEY (Order_ID) REFERENCES Orders (Order_ID) -- Foreign Key
);
-- Create Manages table
CREATE TABLE Manages(
Employee_ID INT NOT NULL, 
Record_ID INT NOT NULL,
ManageDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
Note VARCHAR(500) NOT NULL,
CONSTRAINT M_PK PRIMARY KEY(Employee_ID, Record_ID),
FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID), -- Forgein key
FOREIGN KEY (Record_ID) REFERENCES Vinyl_Record(Record_ID) -- Forgein key
)


