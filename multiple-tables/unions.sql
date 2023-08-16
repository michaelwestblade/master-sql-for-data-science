select distinct department
from employees
union
select department
from departments;

select distinct department
from employees
except
select department
from departments;

select distinct department
from departments
except
select distinct department
from employees;

select department, count(*)
from employees
group by department
union all
select 'TOTAL', count(*)
from employees;