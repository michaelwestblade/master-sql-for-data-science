select *
from employees;

select employee_id, first_name, department
from employees;

select * from employees where department = 'Sports';

select * from employees where department like 'F%nitu%';

select *
from employees where salary > 100000;

select * from employees where salary = 100000;

select *
from employees where salary < 100000;
