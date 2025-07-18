
 create table Employees(
EmpID INT,
Name VARCHAR(50),
Salary DECIMAL(10,2)
)
 --single-row insert 
INSERT INTO Employees(EmpID, Name, Salary)
values
(1, 'Ali', 6000,00)
 --multiple-row insert
INSERT INTO Employees(EmpID,Name,Salary)
values
(2, 'Bekzod', 4500,00),
(3, 'Zebo', 5200,00)
 UPDATE Employees
SET Salary= 7000
WHERE EmpID=1;
DELETE FROM Employees 
WHERE EmpID =2 
  --DELETE: DELETES THE DATA, BUT KEEPS THE TABLE, USES WITH 'WHERE'
  --TRUNCATE:CLEANS ALL DATA, KEEPS THE TABLE, WORKS FAST
  --DROP:DELETES AT ALL (EVEN THE TABLE ITSELF)

 ALTER TABLE Employees
 MODIFY Name Varchar (100)

 ALTER TABLE Employees 
ADD Depertment Varchar (50) 
Create table Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName Varchar (50))
truncate table Employees 

 insert into Departments (DepartmentID,DepartmentName) 
select 1, 'Management' UNION 
select 2, 'Engineering' UNION 
select 3, 'Design' UNION 
select 4,'HR' UNION
select 5, 'FINANCE'

 Update Employees 
set Department='Management' 
where Salary > 5000

 delete from Empolyees

drop table Employees
Rename table Employees TO Staffmembers 

drop table Departments

--advanced level

create table Products 
(
ProductId int Primary key, ProductName varchar (100), 
Category VARCHAR (50), Price DECIMAL (10,2) check (price > 0))

alter table Products 
add stockquantity int default 50 

Exec sp_rename 'Category', 'ProductCategory' 
insert into Products (ProductId, ProductName, ProductCategory, Price) values (1, 'coca-cola', 'beverages', 12000.00)
insert into Products (ProductId, ProductName, ProductCategory, Price) values (2, 'pepsi', 'beverages', 12000.00)
insert into Products (ProductId, ProductName, ProductCategory, Price) values (3, 'fanta', 'beverages', 11000.00)
insert into Products (ProductId, ProductName, ProductCategory, Price) values (4, 'bahroma', 'ice-cream', 8000.00)
insert into Products (ProductId, ProductName, ProductCategory, Price) values (5, 'doda', 'ice-cream', 6000.00)
 select* into Products_backup
 from Products 
 exec sp_rename 'products', 'invetory' 
 alter table inventory 
 alter column Price Float;
  alter table Inventory 
  add productCode int Identity (1000,5);

  create table Inventory( 
  ProductId int primary key,
  ProductName varchar (100), 
  ProductCategory varchar (50),
  Price Float check (price >0),
  CreatedDate date default getdate(), 
  Stockquantity int default 50, 
  ProductCode int identity (1000, 5))  
