1. 
select *from Products
select Category,
sum(StockQuantity) as TotalStock
from Products
group by Category

2. 
select *from Products;
select
Avg(Price)as AveragePrice
from Products
where Category='Electronics'

3. 
select *from Customers 
Where City like 'L%'

4. 
select* from Products 
select ProductName
from Products
Where ProductName like '%er';

5. 
Select *from Customers 
where country like '%A';
6.
select MAX(Price) as HighestPrice
from products;

7.
Select ProductName,
StockQuantity, 
CASE 
When StockQuantity <30 Then 'Low Stock'
Else 'Sufficient'
end as StockStatus 
from Products

8.
select Country,
count (customerID) as TotalCustomers
from Customers
Group by country

9. 
Select *from Orders
select Min(Quantity) as MinQuantity,
Max(Quantity) as MAxQuantity
from orders;

10. CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    InvoiceDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Invoices (InvoiceID, CustomerID, InvoiceDate, TotalAmount) VALUES
(1, 1, '2023-01-05', 150.00),
(2, 2, '2023-01-07', 200.00),
(3, 3, '2023-01-10', 250.00),
(4, 4, '2023-01-12', 300.00),
(5, 5, '2023-01-15', 350.00),
(6, 6, '2023-01-18', 400.00),
(7, 7, '2023-01-20', 450.00),
(8, 8, '2023-01-23', 500.00),
(9, 9, '2023-01-25', 550.00),
(10, 10, '2023-01-28', 600.00),
(11, 11, '2023-02-02', 150.00),
(12, 12, '2023-02-04', 200.00),
(13, 13, '2023-02-07', 250.00),
(14, 14, '2023-02-09', 300.00),
(15, 15, '2023-02-11', 350.00),
(16, 16, '2023-02-13', 400.00),
(17, 17, '2023-02-15', 450.00),
(18, 18, '2023-02-17', 500.00),
(19, 19, '2023-02-19', 550.00),
(20, 20, '2023-02-21', 600.00),
(21, 21, '2023-02-24', 150.00),
(22, 22, '2023-02-26', 200.00),
(23, 23, '2023-02-28', 250.00),
(24, 24, '2023-03-02', 300.00),
(25, 25, '2023-03-04', 350.00),
(26, 26, '2023-03-06', 400.00),
(27, 27, '2023-03-08', 450.00),
(28, 28, '2023-03-10', 500.00),
(29, 29, '2023-03-12', 550.00),
(30, 30, '2023-03-14', 600.00),
(31, 31, '2023-03-17', 150.00),
(32, 32, '2023-03-19', 200.00),
(33, 33, '2023-03-21', 250.00),
(34, 34, '2023-03-23', 300.00),
(35, 35, '2023-03-25', 350.00),
(36, 36, '2023-03-27', 400.00),
(37, 37, '2023-03-29', 450.00),
(38, 38, '2023-03-31', 500.00),
(39, 39, '2023-04-02', 550.00),
(40, 40, '2023-04-04', 600.00);

create table city_population ( district_id int, district_name varchar(30),population decimal(10,2),year varchar(20))

insert into city_population values 
(1,'Chilonzor',2500,2012),
(2,'Yakkasaroy',1500,2012),
(3,'Mirobod',3000,2012),
(4,'Yashnobod',1000,2012),
(5,'Bektemir',2000,2012),
(1,'Chilonzor',2800,2013),
(2,'Yakkasaroy',1900,2013),
(3,'Mirobod',2000,2013),
(4,'Yashnobod',5000,2013),
(5,'Bektemir',1500,2013)
select *from Invoices;
select * from Orders
select Distinct o.CustomerID
from Orders o 
WHERE YEAR(o.orderDate)=2023
and month(o.OrderDate)=1
and 0.CustomerID not in (
select CustomerID from Invoices
11.
CREATE TABLE Products_Discounted (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);

INSERT INTO Products_Discounted VALUES
(1, 'Gaming Laptop', 950.00, 'Electronics', 25),
(2, 'Smartphone', 750.00, 'Electronics', 45),
(3, 'Convertible Tablet', 350.00, 'Electronics', 35),
(4, 'Ultra-Wide Monitor', 220.00, 'Electronics', 55),
(5, 'Mechanical Keyboard', 45.00, 'Accessories', 90),
(6, 'Wireless Mouse', 25.00, 'Accessories', 110),
(7, 'Chair', 130.00, 'Furniture', 75),
(8, 'Standing Desk', 190.00, 'Furniture', 70),
(9, 'Luxury Pen', 4.50, 'Stationery', 280),
(10, 'Leather Notebook', 9.00, 'Stationery', 480),
(11, 'Laser Printer', 160.00, 'Electronics', 20),
(12, 'DSLR Camera', 480.00, 'Electronics', 35),
(13, 'LED Flashlight', 20.00, 'Tools', 190),
(14, 'Designer Shirt', 28.00, 'Clothing', 140),
(15, 'Jeans', 40.00, 'Clothing', 110),
(16, 'Winter Jacket', 70.00, 'Clothing', 60),
(17, 'Running Shoes', 55.00, 'Clothing', 90),
(18, 'Wool Hat', 18.00, 'Accessories', 45),
(19, 'Thermal Socks', 9.00, 'Clothing', 180),
(20, 'T-Shirt', 22.00, 'Clothing', 140),
(21, 'Desk Lamp', 55.00, 'Furniture', 35),
(22, 'Marble Coffee Table', 95.00, 'Furniture', 30),
(23, 'Hardcover Book', 13.00, 'Stationery', 230),
(24, 'Persian Rug', 85.00, 'Furniture', 50),
(25, 'Glass Cup', 4.50, 'Accessories', 470),
(26, 'Leather Bag', 22.00, 'Accessories', 270),
(27, 'Recliner Couch', 420.00, 'Furniture', 10),
(28, 'Smart Fridge', 570.00, 'Electronics', 15),
(29, 'Gas Stove', 460.00, 'Electronics', 12),
(30, 'Compact Microwave', 100.00, 'Electronics', 20),
(31, 'Split Air Conditioner', 320.00, 'Electronics', 8),
(32, 'Front-Load Washing Machine', 410.00, 'Electronics', 12),
(33, 'High-Efficiency Dryer', 370.00, 'Electronics', 8),
(34, 'Ionic Hair Dryer', 27.00, 'Accessories', 90),
(35, 'Steam Iron', 38.00, 'Electronics', 45),
(36, 'Espresso Maker', 45.00, 'Electronics', 55),
(37, 'Portable Blender', 32.00, 'Electronics', 35),
(38, 'Cold Press Juicer', 50.00, 'Electronics', 28),
(39, 'Smart Toaster', 36.00, 'Electronics', 65),
(40, 'Compact Dishwasher', 470.00, 'Electronics', 18);

select *from Products 
select *from Products_Discounted
select ProductName from Products 
union all 
select ProductName from Products_Discounted;

12.
select ProductName from Products
union 
select ProductName from Products_Discounted

13. 
select Year (orderDate) as OrderYear,
AVG(TotalAmount) as AverageOrderAmount
from orders 
group by year (orderdate);

14. 
select ProductName,
Price,
case 
when Price <100 then 'low'
when Price between 100 and 500 then 'mid'
else 'high'
end as pricegroup
from Products
select *from products
15.
select *from city_population
select district_name, [2012], [2013]
into Population_each_year
from (
Select district_name, year, population
from city_population )
as SourceTable
pivot(
sum(population)
for year in ([2012], [2013]))
as pivottable ;

16.
select ProductID,
Sum(SaleAmount) as TotalSales 
from Sales 
group by ProductID 

17. select ProductName
from Products
where ProductName like '%oo%';

18. 
select*from City_population 
select year, [Bektemir], [Chilonzor], [Yakkasaroy] 
into Population_each_city
from (
select year, city, population
from city_population
)as SourceTable 
pivot(
sum (population) 
for City in ([Bektemir],[Chilonzor], [Yakkasaroy]))
as pivottable
