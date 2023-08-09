select * from employees;

select first_name, salary,
    case
        when salary < 100000 then 'Underpaid'
        when salary > 100000 and salary < 160000 then 'Paid well'
        when salary > 160000 then 'EXEC'
        else 'UNPAID'
    end as category
from employees order by salary desc;

select salaries.category, count(*) from (
                  select first_name, salary,
                         case
                             when salary < 100000 then 'Underpaid'
                             when salary > 100000 and salary < 160000 then 'Paid well'
                             when salary > 160000 then 'EXEC'
                             else 'UNPAID'
                             end as category
                  from employees order by salary desc
              ) as salaries group by salaries.category;

select sum(case when salary < 100000 then 1 else 0 end ) as underpaid,
       sum(case when salary < 100000 and salary < 150000 then 1 else 0 end ) as paid_well,
       sum(case when salary > 150000 then 1 else 0 end ) as executive from employees;