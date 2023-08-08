select substring('This is test data' FROM 1 for 4);

select department, replace(department, 'Clothing', 'Attire') as modified_department from employees;

select department, replace(department, 'Clothing', 'Attire') modified_data, department || ' department' as "Complete Department Name" from departments;

select coalesce(position('@' IN email), 0)
from employees;

select email, substring(email, position('@' IN email) + 1) as domain
from employees;

select COALESCE(email, 'NONE') as email from employees