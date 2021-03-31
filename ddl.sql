------------------DATA DAFINATION LANGUAGE---------------------
------------------ CREATE ----------------------------
create table test1(sno number(7,2));
insert into test1 values(12345.67);
select * from test1;
insert into test1 values(123456.7);
insert into test1 values(12345.6789);


create table test2(sno number(7));
insert into test2 values(99.9);
select * from test2;
insert into test2 values(99.4);

------------------------------- ALTER -------------------------------
create table first(sno number(10), name varchar2(10));
desc first;
alter table first add sal number(10);
alter table first modify sno date;
alter table first modify sno varchar2(10);
alter table first drop column sno;
alter table first drop (name);
alter table first drop(sal);

--------------------------------DROP ----------------------------------
desc first;
drop table first;

flashback table first to before drop;
desc first;

drop table first purge;
flashback table first to before drop;



create table first(sno number(10));
drop table first;
desc recyclebin;
select ORIGINAL_NAME from recyclebin;
drop table test1;
drop table test2;
purge table test1;
purge RECYCLEBIN;


-------------TRUNCATE---------------------------
create table first as select * from employees;
select * from first;
truncate table first;
select * from first;
desc first;


-----------------RENAME----------------------------
rename first to second;
desc first;
desc second;
RENAME SECOND TO FIRST;
alter table second rename column email to mail;
desc second;
