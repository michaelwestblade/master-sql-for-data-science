select UPPER(first_name), LOWER(department) from employees;

select length(first_name) from employees;

select trim('      HELLO    ');

select length(trim('      HELLO    '));

select first_name || ' ' || last_name as full_name from employees;

select first_name || ' ' || last_name as full_name, (salary > 140000) as is_highly_paid from employees order by salary desc;

select department, ('Clothing' IN (department)) from employees;

select department, (department like '%oth%') from employees;