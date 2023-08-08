CREATE table cars(make varchar(10));

insert into cars values ('HONDA');
insert into cars values ('HONDA');
insert into cars values ('HONDA');
insert into cars values ('TOYOTA');
insert into cars values ('TOYOTA');
insert into cars values ('NISSAN');

select *
from cars;

select count(*) from cars;

select count(*), make from cars group by make;

select make from cars group by make;

