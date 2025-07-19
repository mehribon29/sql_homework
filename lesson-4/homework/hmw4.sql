1.
  select top 5 *from Employees 

2. 
  select distinct CategoryName from Products 

3. 
  select *from Products 
where Price >100

4.
  select *from Costumers 
where FirstName like 'A%'

5.
  select *from Products 
order by Price ASC

6.
  select *from Empolyees 
Where Salary >=60000 AND Department='HR'

7.
  Select EmployeeID, FirstName, LastName,
ISNULL(email, 'noemail@example.com') AS Email
from Employees 

8. 
  Select*from Products 
Where Price Between 50 and 100 

9.
  Select distinct Category, ProductName
From Products 

10.
  Select distinct Category, ProductName
From Products 
Order by ProductName Desc 

11. 
select top 10 *from Products 
order by Price Desc 

12. 
select EmployeeID, COALESCE(FistName, LastName) AS PreferredName 
From Employees 

13. 
select DISTINCT Category,Price 
From Products 

14. 
Select*from Employees 
Where (age between 30 and 40) Or Department= 'Marketing' 

15.
  Select *from Employees 
order by Salary Desc 
OFFSET 10 rows FETch next !0 row only 

16. 
select *from Products 
where Price <=1000 and stock >50 
order by Stock ASC 

17. 
select *from Products 
Where ProductName like '%e%'

18. 
select *from employees 
where department IN('HR','IT','Finance')

19. 
select *from Customers 
order by city asc, postalcode desc
