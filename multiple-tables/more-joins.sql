select first_name, department, hire_date, country
from employees e inner join public.regions r on e.region_id = r.region_id
where hire_date = (select min(hire_date) from employees e2);

select first_name, department, hire_date, country
from employees e inner join public.regions r on e.region_id = r.region_id
where hire_date = (select max(hire_date) from employees e2);


(select first_name, department, hire_date, country
from employees e inner join public.regions r on e.region_id = r.region_id
where hire_date = (select min(hire_date) from employees e2) limit 1)
union all
select first_name, department, hire_date, country
from employees e inner join public.regions r on e.region_id = r.region_id
where hire_date = (select max(hire_date) from employees e2)
order by hire_date;

select hire_date, salary,
       (select sum(salary) from employees e2 where e2.hire_date between e.hire_date - 90 and e.hire_date) as spending_pattern
       from employees e
order by hire_date;

