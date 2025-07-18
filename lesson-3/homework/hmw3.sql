1.
  bulk insert is a T-sql command used to import a large volume of data from a file into a Sql server table efficiently. 
--it's used when we need to insert external data quickly into a database, typically for migrations, backups,or data processing.

2. CSV(comma-separated values)
  -- TXT (plain text) 
  -- XML( eXtensible Markup language)
   --JSON (JavaScript Object Notation) 

   3.
   create table products (
   ProductID INT Primary key, 
   ProductName varchar (50)
   Price Decimal (10,2)

   4. 
   insert into Products (ProductID, ProductName,Price)
   values 
   (1,'laptop', 899.99)
   (2, 'Mouse', 25,50 )
   (3,'keyboard', 45,75)
 5. 
     Null means that the field can store no value or "unknown"
   --NOT NULL ensures that a column must always contain a value, it can't be left empty.
 6. 
  Alter table Products
 ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName)

   7. 
--this query selects all products with price greater than 50
select *FROM Products 
where price >50 

8.
create table Categories(
CategoryID INT Primary key, 
CategoryName varchar (50) UNIQUE) 

9. --Identity is used to auto-generate numeric values for a column.
  -- it helps auto-increment a column's value(like primary keys,)usually for unique indentities
 
 
 10. 
  bulk insert Products 
 from 'C;\data\products.text'
 with (
 Fieldterminator =',',
 rowterminator='\n',
 firstrow=2 ) 

11.
 Alter table Products 
 Add constraint FK_CategoryID Foreign Key (categoryID) 
 References Categories (CategoryID)     
12. 
--primary key is always not null, unique key can accept null values 
--primary key is only one existance in each table, unique key can be more in  each table 
--primary key is used to identification, where unique for avoiding repitation 
13. 
alter table Products 
Add constraint Chk_Price Check (price>0) 
14. 
alter table Products 
ADD stock INT NOT NULL DEFAULT 0 
15.
     select ProductID, ProductName, ISNULL (Price,0) AS Price 
from Products 

16.
     -- foreign key provides the connection between the column of another table. 
--And helps to maintain referential integrity between related tables 
-- Prevents inserting values in child table that do not exist in parent table 
--prevent deleting or updating a referenced record if it is still being used in another table 

 Advanced 
     
 17. 
 create table Costumers 
(CostumerID int primary key,
CostumerName varchar (50),
age int check( age>=18));

18. 
create table Products 
(ProductID int identity (100,10) Primary key, 
ProductName varchar (100));

19. 
Create table OrderDetails
(OrderID int, 
ProductID int,
Quantity int, 
primary key (OrderID, ProductID));

20. 
--isnull takes two arguments only, if the first argument is null, returns the second argument. 
--coalesce-can take two or more arguments, returns the first non-null values from the list. More flexible than isnull.

21.
create table Employees
(EmpID int PRIMARY KEY,
FullName varchar (100),
Email varchar (100) unique);

22.
Create table Orders 
(OrderID int PRIMARY KEY, 
CostumerID int,
Foreign key (costumerID), references Customers('CustomerID'
on delete cascade 
on update cascade);
