select count(*)
from (select *
      from employees,
           departments) e;


select * from employees a cross join departments d;