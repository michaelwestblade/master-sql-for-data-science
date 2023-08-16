select department,
       first_name,
       max(salary),
       min(salary)
from employees
group by department, first_name;

select department, first_name, salary,
       case when salary = max_by_department then 'HIGHEST SALARY'
            when salary = min_by_department then 'LOWEST SALARY'
end as salary_in_department
from (select department,
             first_name,
             salary,
             (select max(salary) from employees e2 where e1.department = e2.department) as max_by_department,
             (select min(salary) from employees e3 where e1.department = e3.department) as min_by_department
      from employees e1
      order by department) innerq
where salary in (max_by_department, min_by_department);