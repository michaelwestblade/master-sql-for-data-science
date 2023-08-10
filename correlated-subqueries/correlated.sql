select first_name,
       salary
from employees
where salary > (select round(avg(salary)) from employees)
order by salary desc;

select first_name,
       salary,
       department
from employees e1
where salary > (select round(avg(salary)) from employees e2 where e1.department = e2.department)
order by department, salary desc ;

select first_name,
       salary,
       department,
       (select round(avg(salary)) from employees e2 where e1.department = e2.department) as avg_dept_salary
from employees e1
order by department, salary desc ;

select department from departments d where 38 < (select count(*) from employees e where e.department = d.department);

select department, (select max(salary) from employees where department = d.department) from departments d where 38 < (select count(*) from employees e where e.department = d.department);