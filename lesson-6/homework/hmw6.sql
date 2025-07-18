--puzzle1
CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');
select*from InputTbl

select distinct 
case when col1 < col2 then col1 else col2 end AS col1,
case when col1 < col2 then col2 else col1 end as col2 
from InputTbl

--puzzle2
CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

	select *from TestMultipleZero
	select 
	sum (nullif (A,0))as SumA, 
	sum (nullif (B,0))as SumB,
	sum (nullif (C,0))as SumC,
	sum (nullif (D,0))as SumD
	From TestMultipleZero

--puzzle3 
create table section1(id int, name varchar(20))
insert into section1 values 
       (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')

	 select* from section1
	 where id%2=1

	 --puzzle4	 
	 select* from section1
	 select top 1* 
	 from section1 
	 order by id asc

	 --puzzle5
	 select* from section1
	 select top 1* 
	 from section1 
	 order by id desc 

	 --puzzle6
 select* from section1
 where name like 'B%'

 --puzzle 7
 
 CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

select * from ProductCodes
where code like '%\_%' escape '\'
