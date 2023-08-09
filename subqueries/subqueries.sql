select *
from employees where department not in (select departments.department from departments);

select * from (select * from employees where salary > 150000) as emsal;

select * from employees where department in (select department from departments);

select d.department from (select department from departments) as d;

select first_name, last_name, salary, (select first_name from employees limit 1) as fne from employees;

select *
from employees where department in (select department from departments where division='Electronics');

select *
from employees where region_id in (select regions.region_id from regions where country in ('Asia', 'Canada')) and salary > 130000;

select first_name, department, salary, (select max(salary) from employees), (select max(salary) from employees) - employees.salary as diff from employees;

select * from regions;

select * from employees where region_id in (select region_id from regions where country = 'United States');

select * from employees where region_id > any (select region_id from regions where country = 'United States');

select * from employees where region_id > all (select region_id from regions where country = 'United States');

select * from employees where department = any (select department from departments where division='Kids') and hire_date > all (select hire_date from employees where department = 'Maintenance');

select salary from (select salary, count(*) from employees group by salary order by count desc, salary desc limit 1) as highest;

select salary from employees group by salary having count(*) >= ALL(select count(*) from employees group by salary) order by salary desc limit 1;

select round(avg(salary)) from employees where salary not in ((select min(salary) from employees), (select max(salary) from employees))