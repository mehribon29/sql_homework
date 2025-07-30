1.
select
p.FirstName, 
p.LastName,
a.City,
a.State
from Person P 
Left join Adress a 
on p.personID=a.PersonID 

2. 
select e.Name as Employee
from Employee e 
join Employee m 
on e.MAnagerID=m.ID 
where e.Salary >m.salary 

3. 
select 
email 
from Person 
group by email
having count(*) >1 

4. 
delete from Person 
where ID not in (
Select min (ID) 
from Person 
group by email);
5. 
select distinct g.ParentName 
from girls g 
where g.Parentname Not in (
Select  distinct ParantName from boys);

6. 
select 
o.customerID,
(select Sum (orderAmount) from Sales.Orders Where weight >50 and  CustomerID =o.CustomerId ) as TotalSalesOver50,
min (o.weight) as leastweight 
from Sales.Orders.o 
group by o.CustomerID;

7. 
select 
c1.Item as [Item Cart 1],
c2.Item as [Item cart 2]
from Cart1 c1
Full outer join cart2 c2 
on c1.Item=c2.item

8. 
select c.name 
from Customers c 
left join orders o 
on c.=o.CustomerID
where o.OrderID is null;

9. 
select s.student_id,
s.student_name 
sub.subject_name 
count (e.subject_name) as attended exams 
from students s 
cross join subjects sub 
left join examinations e 
on s.student_id =e.student_id 
and sub.subject_name =e.subject_name 
group by 
s.student_id, s.student_name, sub.subject_name
order by 
s.student_id, sub.subject_name;
