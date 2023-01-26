-- -------------------------------------------------ASSIGNMENT 2------------------------------------------------------------------------------
use assignmentdb;
-- Q1.
select emp_no, first_name, hire_date, salary from emp where salary > 3000;
----------------------------------------------------------------------------------------------------------------------------------------------
-- Q2.
select * from students;
alter table students add division varchar(30) after marks;
update students set division='Distinction' where marks>=80;
set sql_safe_updates =0;
update students set division='First class' where marks>=50 and marks<80;
update students set division='Second class' where marks>40 and marks<50;
update students set division='Fail' where marks<30;
-- Q2. (a)
select count(*) from students where division ='Distinction'; -- 11 students
-- Q2. (b)
select count(*) from students where division ='First class'; -- 12 students
select * from students;
---------------------------------------------------------------------------------------------------------------------------------------------
-- Q3.
select * from station;
select * from station where id%2 = 0 order by id;
---------------------------------------------------------------------------------------------------------------------------------------------
-- Q4.
select * from station;
select (count(city)  - count(DISTINCT city)) as difference from station;
---------------------------------------------------------------------------------------------------------------------------------------------
-- Q5.
-- Q5. (a)
select distinct city from station where regexp_like(city,'^[aeiouAEIOU]') order by city;
-- Q5. (b)
select distinct city from station where regexp_like(city,'[aeiouAEIOU]$');
-- Q5. (c)
select distinct city from station where not city regexp'^[AEIOU]';
-- Q5. (d)
select distinct city from station where city not regexp '^[aeiou]' and city not regexp '[aeiou]$';
----------------------------------------------------------------------------------------------------------------------------------------------
-- Q6. 
select * from emp;
select first_name, last_name, salary from emp where salary > 2000 and timestampdiff( month, hire_date, '1980-12-17') < 36 order by salary;
----------------------------------------------------------------------------------------------------------------------------------------------
-- Q7.
select * from employee;
select deptno, sum(salary) from employee group by deptno;
----------------------------------------------------------------------------------------------------------------------------------------------
-- Q8.
select * from city;
select * from city where population>100000;
select count(*) from city where population > 100000;
----------------------------------------------------------------------------------------------------------------------------------------------
-- Q9.
select * from city;
select sum(population) as total_population from city where district = 'California';
----------------------------------------------------------------------------------------------------------------------------------------------
-- Q10.
select * from city;
select countrycode, avg(population) from city group by district;
----------------------------------------------------------------------------------------------------------------------------------------------
-- Q11.
select * from orders;
select * from customers;
select a.ordernumber,a.status,b.customername,b.customernumber,a.comments from orders a inner join 
customers b on a.customernumber=b.customernumber where status='disputed';
-----------------------------------------------------------------------------------------------------------------------------------------------











