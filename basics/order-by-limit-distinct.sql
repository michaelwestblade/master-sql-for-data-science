select * from employees where department = 'Sports' order by salary desc ;

select distinct department from employees order by 1;

select distinct department from employees order by 1 limit 10;

select distinct department from employees order by 1 fetch first 3 rows only ;