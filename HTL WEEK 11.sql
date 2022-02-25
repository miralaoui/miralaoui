drop database ordering_system;


create database ordering_system;

use ordering_system;

CREATE TABLE customers(
CustomerID int primary key,
CustomerName varchar(100),
ContactName varchar(100),
Address varchar(100),
City varchar(100),
PostalCode varchar(10),
Country varchar(40)

);

explain customers;

drop table customers;


INSERT INTO customers (CustomerID, CustomerName,ContactName, Address, City, PostalCode, Country)
VALUES
(1, "Alfreds Futterkiste","Juan","Obere Str.57","Berlin","12209","Germany"),
(2, "Ana Trujillo Emparededos yorders helados","Juan","Avda.de la Constuituscion 2222","Mexico D.F","05021","Mexico"),
(3, "Around the Horn","Juan","120 Hanover Sq.","London","WA1 1DP","UK"),
(4, "Piccolound mehr","Juan","Geislweg 14","Salzburg","5020","Austria"),
(5, "Princesa Isabel Vinhoss","Juan","Estrada da saude n. 58","Lisboa","1756","Portugal"),
(6, "Que Delicia","Juan","Rua da Panificadora 12","Rio de Janerio","02389-673","Brazil");

SELECT * FROM customers;

-- Create second table

CREATE TABLE Orders(
CustomerID int,
OrderID int not null primary key,
Item int not null,
ItemName varchar(80)
);
-- Update column
ALTER TABLE Orders
ADD ProductPrice decimal(6,2);

explain Orders;

-- Add data
INSERT INTO Orders (CustomerID, OrderID, Item, ItemName, ProductPrice)
VALUES
(6, 5021545, 32174524,  "Toaster",  17.99),
(3, 5021546, 45142548, "Set of 3 Nested Tables", 105.99),
(3, 5021547, 87413547, "Electric Toothbrush", 45.99),
(1, 5021548, 24586596, "4 Person Tent", 220.99),
(4, 5021549, 47512543, "Upright Fan", 41.99),
(5, 5021550, 73519487, "Henry Hoover", 111.99),
(2, 5021553, 87654768, "Hair Straightener", 59.99),
(2, 5021557, 97845327, "Dyson Cordeless", 399.99),
(1, 5021559, 45728648, "AEG washing machine", 599.99),
(1, 5021603, 32178658, "BOSCH Traditional Kettle", 79.95)
;



SELECT * FROM orders;

-- Updated price of Henry Hoover 
UPDATE orders
SET ProductPrice = 119.99
WHERE OrderID = 5021550;

SELECT * FROM orders;

-- Joining tables

SELECT customers.CustomerName , orders.OrderID
FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID;

-- selecting data 
SELECT *
FROM customers
INNER JOIN orders
WHERE customers.CustomerID = orders.CustomerID AND orders.ItemName = "Toaster";

-- select using comparison operators
SELECT * FROM orders
WHERE ProductPrice between 35 and 120;

-- Update customer name 
UPDATE customers
SET CustomerName = 'Pam Beesley'
WHERE CustomerId = 4;

SELECT * FROM customers;

select customerID
from orders 
order by customerID;

delete from orders
where customerID = '5021603';



SELECT name FROM products WHERE name IN ( 'Value1', 'Value2' );
