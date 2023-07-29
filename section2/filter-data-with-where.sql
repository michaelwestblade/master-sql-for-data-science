select *
from employees where salary < 200000;

select * from employees where salary > 200000;

select * from employees where department = 'Clothing' and salary > 90000;

select * from employees where department = 'Clothing' OR salary > 90000;

select * from employees where salary < 40000 and department in ('Clothing', 'Pharmacy');