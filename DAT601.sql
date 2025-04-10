use master;
GO
DROP DATABASE IF EXISTS DAT601_DB;
GO
CREATE DATABASE DAT601_DB;
GO
USE DAT601_DB;
GO
--DROP TABLE Customer;
CREATE TABLE Customer
(
	CustID		CHAR(10)	NOT NULL,
	CustName	CHAR(50)	NOT NULL,
	CustAddress	CHAR(50)	,
	CustCity	CHAR(50)	,
	CustContact	CHAR(50)	,
	CustPhone	CHAR(15)	,
	CustEmail	CHAR(255)	
);
--DROP TABLE OrderEntry;
CREATE TABLE OrderEntry
(
	OrderID		INTEGER		NOT NULL,
	OrderDate	DATETIME	NOT NULL,
	CustID		CHAR(10)	NOT NULL
);
--DROP TABLE Vendor;
CREATE TABLE Vendor
(
	VendorID		CHAR(10)	NOT NULL,
	VendorName		CHAR(50)	NOT NULL,
	VendorAddress	CHAR(50)	,
	VendorCity		CHAR(50)	,
	VendorPhone		CHAR(15)
);
--DROP TABLE OrderItem;
CREATE TABLE OrderItem
(
	OrderID		INTEGER		NOT NULL,
	OrderItem	INTEGER		NOT NULL,
	ProductID	CHAR(10)	NOT NULL,
	Quantity	INTEGER		NOT NULL,
	ItemPrice	DECIMAL(8,2)NOT NULL
);
--DROP TABLE Product;
CREATE TABLE Product
(
	ProductID		CHAR(10)	NOT NULL,
	VendorID		CHAR(10)	NOT NULL,
	ProductName		CHAR(255)	NOT NULL,
	ProductPrice	DECIMAL(8,2)NOT NULL,
	ProductDesc		VARCHAR(100)		
);
INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000001','Village Toys','200 Oak Lane','Wellington','09-389-2356','John Smith','sales@villagetoys.co.nz');
INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000002','Kids Place','333 Tahunanui Drive','Nelson','03-545-6333','Michelle Green');
INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000003','Fun4All','1 Sunny Place','Nelson','03-548-2285','Jim Jones','jjones@fun4all.co.nz');
INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000004','Fun4All','829 Queen Street','Auckland','09-368-7894','Denise L. Stephens','dstephens@fun4all.co.nz');
INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000005','The Toy Store','50 Papanui Road','Christchurch','04-345-4545','Kim Howard');
INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20005,'1999/5/1','1000000001');
INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20006,'1999/1/12','1000000003');
INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20007,'1999/1/30','1000000004');
INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20008,'1999/2/3','1000000005');
INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20009, '1999/2/8','1000000001');
INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRS01','Bears R Us','123 Main Street','Richmond','03-523-8871');
INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRE02','Bear Emporium','500 Park Street','Auckland','06-396-8854');
INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('DLL01','Doll House Inc.','555 High Street','Motueka','03-455-7898');
INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('FRB01','Furball Inc.','1 Clifford Avenue','Nelson','03-546-9978');
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,1,'BR01',100,5.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,2,'BR03',100,10.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,1,'BR01',20,5.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,2,'BR02',10,8.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,3,'BR03',10,11.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,1,'BR03',50,11.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,2,'BNBG01',100,2.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,3,'BNBG02',100,2.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,4,'BNBG03',100,2.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,5,'RGAN01',50,4.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,1,'RGAN01',5,4.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,2,'BR03',5,11.99);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,3,'BNBG01',10,3.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,4,'BNBG02',10,3.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,5,'BNBG03',10,3.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,1,'BNBG01',250,2.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,2,'BNBG02',250,2.49);
INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,3,'BNBG03',250,2.49);
INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR01', 'BRS01', '8 inch teddy bear',5.99,'8 inch teddy bear, comes with cap and jacket');
INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR02', 'BRS01', '12 inch teddy bear',8.99,'12 inch teddy bear, comes with cap and jacket');
INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR03', 'BRS01', '18 inch teddy bear',11.99,'18 inch teddy bear, comes with cap and jacket');
INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG01', 'DLL01', 'Fish bean bag toy',3.49,'Fish bean bag toy, complete with bean bag worms with which to feed it');
INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG02', 'DLL01', 'Bird bean bag toy',3.49,'Bird bean bag toy, eggs are not included');
INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG03', 'DLL01', 'Rabbit bean bag toy',3.49,'Rabbit bean bag toy, comes with bean bag carrots');
INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('RGAN01', 'DLL01', 'Raggedy Ann',4.99,'18 inch Raggedy Ann doll');
ALTER TABLE Customer
ADD CONSTRAINT PK_Customer PRIMARY KEY (CustID);
ALTER TABLE OrderEntry
ADD CONSTRAINT PK_OrderID PRIMARY KEY (OrderID);
ALTER TABLE OrderEntry
ADD CONSTRAINT FK_CustID_Customer FOREIGN KEY (CustID) REFERENCES Customer (CustID);
ALTER TABLE Vendor 
ADD CONSTRAINT PK_Vendor PRIMARY KEY (VendorID);
ALTER TABLE Product 
ADD CONSTRAINT PK_Product PRIMARY KEY (ProductID);
ALTER TABLE OrderItem 
ADD CONSTRAINT PK_OrderItem PRIMARY KEY (OrderID, OrderItem);
ALTER TABLE OrderItem
ADD CONSTRAINT FK_OrderID FOREIGN KEY (OrderID) REFERENCES OrderEntry (OrderID);
ALTER TABLE OrderItem
ADD CONSTRAINT FK_ProductID_Product FOREIGN KEY (ProductID) REFERENCES Product (ProductID);
AlTER TABLE Product
ADD CONSTRAINT FK_VendorID_Vendor FOREIGN KEY (VendorID) REFERENCES Vendor (VendorID);
-- Q1
select
	Vendor.VendorID AS 'Vendor ID',
	ProductName AS 'Product'
from
	Vendor
join
	Product
on Vendor.VendorID = Product.VendorID
where
	Vendor.VendorID <> 'DLL01'


-- Q2
SELECT
    ProductName AS 'Products',
    CAST(ProductPrice AS DECIMAL(10,4)) AS 'Price'  
FROM
    Product
WHERE
    ProductPrice > 5 AND ProductPrice < 10;
-- https://www.scaler.com/topics/sql-cast/


-- Q3
SELECT
	Product.ProductName,
	CAST(Product.ProductPrice AS decimal(10, 4)) AS 'Price'
FROM
	Product
JOIN 
	Vendor
ON 
	Product.VendorID = Vendor.VendorID
WHERE 
	Product.ProductPrice > 10 
AND Vendor.VendorID IN ('DLL01', 'BRS01') 

-- Q4
SELECT
	AVG(ProductPrice)	as 'Average Product Price'
FROM
	Product

-- Q5
select
	COUNT(Customer.CustID)	as 'Total Customers'
from	
	Customer



-- Q6
select
	COUNT(Customer.CustID)	as 'Total Customers'
from	
	Customer
where
	Customer.CustEmail IS NOT NULL

-- Q7
SELECT
	COUNT(ProductPrice)	as 'Product Types',
	MIN(ProductPrice)	as 'Minimum Price',
	MAX(ProductPrice)	as 'Maximum Price',
	AVG(ProductPrice)	as 'Average Price'
from
	Product


-- Q8
SELECT 
	Vendor.VendorName AS 'Vendor',
	Product.ProductName AS 'Product',
	CAST(Product.ProductPrice AS decimal(10, 4)) AS 'Price'
FROM	
	Vendor
JOIN
	Product
ON
	Vendor.VendorID = Product.VendorID

-- Q9
SELECT
	Product.ProductName AS 'Product',
	Vendor.VendorName AS 'Vendor',
	Product.ProductPrice AS 'Price',
	OrderItem.Quantity

FROM
	Product
JOIN
	Vendor
ON
	Product.VendorID = Vendor.VendorID
join
	OrderItem
on
	Product.ProductID = OrderItem.ProductID
where
	OrderItem.OrderID = 20007


-- Q10
SELECT
	Customer.CustName AS 'Customer Name',
	Customer.CustContact AS 'Contact Person'
FROM
	Customer
WHERE 
	CustID IN (

SELECT
	OrderEntry.CustID
FROM
	OrderEntry 
JOIN
	OrderItem ON OrderEntry.OrderID = OrderItem.OrderID
WHERE
	OrderItem.ProductID = 'RGAN01'
)

-- Q11
SELECT 
	Customer.CustName AS 'Customer Name',
	Customer.CustCity AS 'City',
	(
		SELECT
			count(*)
		FROM 
			OrderEntry
		WHERE 
			Customer.CustID = OrderEntry.CustID
	) AS TotalOrders
FROM
	Customer 
ORDER BY
	CustName


-- Q12
;WITH NelsonWellingtonCustomers AS (
    SELECT 
        CustName,
        CustContact,
        CustEmail
    FROM
        Customer
    WHERE CustCity IN ('Nelson', 'Wellington')
)
SELECT 
	CustName, 
	CustContact, 
	CustEmail 
FROM 
	NelsonWellingtonCustomers
UNION
SELECT 
	CustName, 
	CustContact, 
	CustEmail 
FROM 
	Customer
ORDER BY CustName



-- Q13
GO
DROP VIEW IF EXISTS vProductCustomer
GO
CREATE VIEW vProductCustomer AS
SELECT DISTINCT
	Customer.CustID,
	Customer.CustName,
	Customer.CustContact,
	Product.ProductID
FROM	
	Customer 
JOIN 
	OrderEntry ON Customer.CustID = OrderEntry.CustID
JOIN 
	OrderItem ON OrderEntry.OrderID = OrderItem.OrderID
JOIN
	Product ON OrderItem.ProductID = Product.ProductID
GO

SELECT 
	vProductCustomer.CustName,
	vProductCustomer.CustContact
FROM	
	vProductCustomer
WHERE 
	vProductCustomer.ProductID = 'RGAN01'
		

DELETE FROM Customer
WHERE CustName = 'The Toy Emporium' 
  AND CustPhone = '09-546-8552'

-- Q14
INSERT INTO Customer (CustID, CustName, CustPhone)
VALUES ('1000000006', 'The Toy Emporium', '09-546-8552');


SELECT	
    CustName,
    CustAddress AS 'Customer address',
    CONCAT(
        ISNULL(NULLIF(TRIM(CustCity), ''), 'NULL'),  
        ', ',                      
        CustPhone                  
    ) AS 'City/town, Phone number'	
FROM Customer;
-- trim the CONCAT removes NULL values -> was the value NULL IF IS replace trimmed whitespace with NULL
-- https://dev.to/moh_moh701/-handling-null-values-in-sql-a-guide-to-isnull-nullif-and-coalesce-3k7l
GO
DROP VIEW IF EXISTS vCustomerMailingLabel
GO
CREATE VIEW vCustomerMailingLabel
AS
SELECT	
    CustName,
    CustAddress AS 'Customer address',
    CONCAT(
        ISNULL(NULLIF(TRIM(CustCity), ''), 'NULL'),  
        ', ',                      
        CustPhone                  
    ) AS 'City/town, Phone number'	
FROM Customer;
GO
SELECT 
	*
FROM
	vCustomerMailingLabel
GO
DROP VIEW IF EXISTS vFilteredCustomerMailingLabel
GO
CREATE VIEW vFilteredCustomerMailingLabel
AS
SELECT 
    CustName,
    CustAddress AS 'Customer address',
    CONCAT(
        ISNULL(NULLIF(TRIM(CustCity), ''), 'NULL'),  
        ', ',                      
        ISNULL(CustPhone, 'NULL')                  
    ) AS 'City/town, Phone number'
FROM Customer
WHERE 
    CustAddress IS NOT NULL
    AND NULLIF(TRIM(CustCity), '') IS NOT NULL;
GO
SELECT
	*	
FROM
	vFilteredCustomerMailingLabel

