
1. 
select e.Name, e.Salary, d.DepartmentName
from Employees e 
join Departments d on e. DepartmentID =d.DepartmentID
where e.Salary>50000 

2. 
select c.Firstname,c.Lastname, o.OrderDate 
from customers c 
Join Orders o On c.CustomerID=o.CustomerID 
where year (o.OrderDate) =2023 

3. 
select e. Name, d.DepartmentName
from Employees e 
left join Departments d on e. DepartmentID=d.DepartmentID

4. 
select s.SupplierName, p.ProductName 
from Suppliers s 
Left join Products p on s.SupplierID=p.supplierID

5. 
select o.OrderID, o.OrderDate, p.Paymentdate, p.Amount 
from Orders o 
full outer join  Payments p on o.orderId =p.orderid 

6. 
select e.Name, m.Name as ManagerName 
from employees e 
left join employees m on e. managerid=m.EmployeeID

7. 
select s.Name, c.CourseName
from Enrollments e 
join Students s on e.StudentID =s.StudentID 
join Courses c on e.courseID=c.CourseID
where c.CourseName='math101'
8.
select c.FirstName, c.LastName, SUM(o.Quantity) as Quantity 
from customers c
Join orders o on c.CustomerID=o.CustomerID
group by c.FirstName, c. LastName
having sum (o.Quantity) >3

9.
select e.Name, d.DepartmentName 
from Employees e 
join Departments d on e. DepartmentID =d.DepartmentID
where d.DepartmentName ='Human Resources' 

10. 
select d.DepartmentName , count (e.EmployeeID) as EmployeeCount
from Departments d 
join Employees e on  d.DepartmentID=e.DepartmentID
group by d.DepartmentName 
having count (e.EmployeeID) >5 
11. 
select p.ProductName, p.ProductID 
from Products p 
left join Sales s on p.ProductID=s.ProductID
where s. ProductID is null

12.
select c.FirstName, c.LastName, Count (o.OrderID) as TotalOrders 
from customers c
join Orders o on c.CustomerID=o.CustomerID
group by c.FirstName, c.LastName 

13.
select e.Name, d.DepartmentName
from Employees e 
join Departments d on e.DepartmentID=d.DepartmentID

14.
select e1.Name as Emp1, e2.Name as Emp2, e1.ManagerID
from Employees e1 
join employees e2 on e1.ManagerID=e2.ManagerID
where e1.EmployeeID<e2. employeeID and e1.ManagerId is not null

15.
select o.OrderID, o.OrderDate, c.FirstName, c.LastName
from Orders o
join Customers c on o.CustomerID=c.CustomerID 
where year (o.OrderDate)=2022

16.
select e.Name, e.Salary, d.DepartmentName
from Employees e 
join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName='Sales'and e. Salary>60000

17.
select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount 
from Orders o
join Payments p on o.orderID= p.OrderID 

18.
select p.productID, p.ProductName
from Products p
left join Orders o on p.ProductID=o.ProductID
where o.ProductID is null
