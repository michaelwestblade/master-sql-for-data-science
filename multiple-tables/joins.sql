select first_name, country from employees
join public.regions r on employees.region_id = r.region_id;

select first_name, email, employees.department, division, country
from employees, departments, regions
where employees.department = departments.department
  and regions.region_id = employees.region_id
  and email is not null;

select country, count(employee_id)
from employees, regions
where regions.region_id = employees.region_id
group by country;

select first_name, country
from employees inner join public.regions r
    on employees.region_id = r.region_id;

select first_name, email, division, country
from employees inner join public.departments d
    on employees.department = d.department
inner join public.regions r
    on employees.region_id = r.region_id
where email is not null;

select distinct department from employees; -- 27
select distinct department from departments; -- 24

select distinct employees.department, departments.department
from employees inner join departments on employees.department = departments.department; -- 23

select distinct employees.department, departments.department
from employees left join departments on employees.department = departments.department; -- 27

select distinct employees.department, departments.department
from employees right join departments on employees.department = departments.department; -- 24

select distinct employees.department employees_department,
                departments.department departments_department
from employees left join departments on employees.department = departments.department
where departments.department is null;

select distinct employees.department employees_department,
                departments.department departments_department
from employees right join departments on employees.department = departments.department
where employees.department is null;

select distinct employees.department employees_department,
                departments.department departments_department
from employees full outer join departments on employees.department = departments.department;