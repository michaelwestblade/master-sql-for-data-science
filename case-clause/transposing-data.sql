select department, count(*)
from employees
where department in ('Sports', 'Tools', 'Clothing', 'Computers')
group by department;

select sum(case when department = 'Sports' then 1 else 0 end) as sports_employees,
       sum(case when department = 'Tools' then 1 else 0 end) as tools_employees,
       sum(case when department = 'Clothing' then 1 else 0 end) as clothing_employees,
       sum(case when department = 'Computers' then 1 else 0 end) as computers_employees
from employees;

select first_name,
       case when region_id = 1 then (select country from regions where region_id=employees.region_id) end as region_1,
       case when region_id = 2 then (select country from regions where region_id=employees.region_id) end as region_2,
       case when region_id = 3 then (select country from regions where region_id=employees.region_id) end as region_3,
       case when region_id = 4 then (select country from regions where region_id=employees.region_id) end as region_4,
       case when region_id = 5 then (select country from regions where region_id=employees.region_id) end as region_5,
       case when region_id = 6 then (select country from regions where region_id=employees.region_id) end as region_6,
       case when region_id = 7 then (select country from regions where region_id=employees.region_id) end as region_7
from employees;

select sum(case when region_id in (select region_id from regions where country = 'United States') then 1 else 0 end) as united_states,
       sum(case when region_id in (select region_id from regions where country = 'Asia') then 1 else 0 end) as asia,
       sum(case when region_id in (select region_id from regions where country = 'Canada') then 1 else 0 end) as canada
from employees;
