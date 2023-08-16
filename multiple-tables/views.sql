create view v_employee_info as
select first_name, email, d.department, salary, division, region, country
from employees e
    join public.departments d on e.department = d.department
    join public.regions r on e.region_id = r.region_id;

select *
from (select * from departments) d;

select *
from regions;

