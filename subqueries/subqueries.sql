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