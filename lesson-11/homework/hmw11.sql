--medium task 
8. 
select c.FirstName, c. LastName as CustomerName, o.TotalAmount as OrderTotal 
from Customers C 
join Orders o on c.CustomerID =o.CustomerID
where o.TotalAmount>500

9. 
select p.ProductName, s.SaleDate, s.SaleAmount
from Sales s 
join Products p on s.ProductID=p.ProductID 
where year (s.SaleDate) =2022 or s.SaleAmount>400 

10. 
select p.ProductName,Sum(s.SaleAmount) as TotalSalesAmount 
from Products p 
join Sales s on p. ProductID=s.ProductID
group by p.ProductName 

11. 
select e.Name, d.DepartmentName, e. Salary 
from Employees e 
join Departments d on e. DepartmentID =d.DepartmentID 
where d.DepartmentName='Human resources' and e.Salary >60000

12. 
select p.ProductName, s. SaleDate, p.StockQuantity 
from Sales s 
Join Products p on s. ProductID=p.ProductID 
where year (s.SaleDate) =2023 and p.StockQuantity>100 

13. 
select e. Name, d.departmentName, e.HireDate 
from Employees e 
join departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName='sales' or year (e.HireDate)>2020

14. 
select c. FirstName, c.LastName as CustomerName, o.OrderID, c.address, o.OrderDate 
from Customers c 
join Orders o on c.CustomerID=o.CustomerID
where c.Country='USA' and c.Address like  '^d{4}'

15.
select p.ProductName, p.Category, s.SaleAmount
from Products p 
join Sales s on p.ProductID=s.ProductID
where p.Category= 'Electronics' or s.Saleamount >350 

16.

select c.CategoryName, count(p.ProductID) as productCount 
from Categories c 
left join Products p on c. CategoryID =p.Category
group by c.CategoryName 

17. 
select c.FirstName, c.LastName as CustomerName, c.City,o.OrderID, o.TotalAmount as Amount 
from Customers c 
join Orders o on c.CustomerId=o.CustomerID
where c.city= 'Los Angelos' and o.TotalAmount>300 

18. 
select e.Name, d.departmentname 
from employees e 
join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName in ('human resources' , 'Finance') 
or len(e.Name)
-Len (replace(replace(replace(replace(replace(lower(e.name),'a',''),'e',''),'i',''),'o' ,''),'u',''))>=4

19. 
select e.Name, d.DepartmentName, e.Salary
from  employees e 
join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName in ('sales', 'Marketing') and e.Salary>60000
