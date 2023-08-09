create table dupes (id integer, name varchar(10));

insert into dupes VALUES (1, 'FRANK');
insert into dupes VALUES (2, 'FRANK');
insert into dupes VALUES (3, 'ROBERT');
insert into dupes VALUES (4, 'ROBERT');
insert into dupes VALUES (5, 'SAM');
insert into dupes VALUES (6, 'FRANK');
insert into dupes VALUES (7, 'PETER');

select name from (select min(id), name from dupes group by name) distinctnames;

select * from dupes where id in (select min(id) from dupes group by name);

delete from dupes where id not in (select min(id) from dupes group by name);
