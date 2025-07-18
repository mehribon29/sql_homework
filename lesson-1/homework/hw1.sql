1. data is the raw facts.
  2. database is a collection of data.
  3. relational database is a connected group of data in different tables. table is structured format used in database
2.
  1. can work with big GB, good storage, efficiency  
  2. security 
  3. fast 
  4. recovery
  5. integration 
3.there are two ways: 
  1. windows authentification 
  2. separate username and password 
  

create table students (
id INT,
name VARCHAR(50),
group_number INT PRIMARY KEY,
age INT,
grade CHAR NOT NULL
)
  
Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
DQL-DATA QUERY LANGUAGE - it's a language to ask data 
DML-DATA MALIPULATION LANGUAGE-it's a language to work with data with the following orders:select, insert, update, delete
DDL-DATA DEFINITION LANGUAGE-it's a language to manage the stucture of the data with the foolowing orders: create, alter, drop, truncate 
DCL-DATA CONTROL LANGUAGE-it's a language to control access to data stored in the database. It deals with permissions and security 
TCL- transaction control language- is used to manage transactions in a database. transaction is a sequence of operations like insert, update,delete

Write a query to insert three records into the Students table.
select* from students
insert into students (id, name,age) values (1, Ali, 20) 
insert into students (id, name,age) values (2, Vali, 22) 
insert into students (id, name,age) values (1, Mali, 19)
