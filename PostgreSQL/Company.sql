CREATE TABLE IF NOT EXISTS public.COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);

insert into company values(101, 'Arjun', 25, 'ABC111', 25000);
insert into company values(102, 'Daniel', 30, 'QWET122', 45000);
insert into company values(103, 'Rose', 30, 'WER433', 55000, 9343245632);
insert into company values(104, 'Jasmine', 30, 'HFG332', 20000, 9643236436);

select * from company;

alter table company 
add column phn_no bigint;


update company
set phn_no=9784736723
where ID='101';

update company
set phn_no=9675563456
where ID='102';

alter table COMPANY
add column designation TEXT;

update company
set designation='EMPLOYEE';

alter table company
rename column address to employee_code;

select * from company order by ID asc;




