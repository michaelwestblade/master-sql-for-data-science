select *
from employees;

select sum(salary) from employees;

select department, sum(salary) from employees group by department;

select department, count(employee_id) as employee_count from employees group by department;

select department,
       count(*) as employee_count,
       round(avg(salary)) avg_sal,
       min(salary) min_sal,
       max(salary) max_sal
from employees
group by department
order by employee_count desc;

select department, gender, count(*) from employees group by department, gender order by department;

select first_name, count(*) as name_count from employees group by first_name having count(*) > 1;

select department from employees group by department;


select count(*), substring(email, position('@' IN email) + 1) as domain
from employees where email is not null group by domain order by count desc;

select gender, region_id, min(salary) min_salary, max(salary) max_salary, round(avg(salary)) avg_salary from employees group by gender, region_id order by gender desc, region_id asc