select * from employees where department = 'Sports';

select * from employees where NOT department = 'Sports';

select * from employees where department != 'Sports';

select * from employees where department <> 'Sports';

select * from employees where email is null;

select *
from employees where department IN ('Sports', 'First Aid', 'Toys', 'Garden');

select * from employees where salary between 80000 and 100000;

select *
from employees where gender = 'F' and department = 'Tools' and salary > 110000;