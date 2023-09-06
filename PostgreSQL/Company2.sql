select * from company order by ID asc;

UPDATE company
set age=45
where name='Rose';

UPDATE company
set age=22
where name='Jasmine';

select * from company 
where id between 102 and 104;

select * from company
where age in (25,45);
 
SELECT * from company
where name like '%el%';

SELECT count(salary) from company
where salary>20000;

select  count(*) from company 
where name like 'J%';

SELECT count(distinct(phn_no)) from company

select distinct(phn_no) from company;

select Min(salary) from company;
select max(salary) from company;

update company
set designation='Trainee'
where id=104;

update company
set designation='Manager'
where id=102;

update company
set designation='Head'
where id=103;

SELECT avg(salary) from company;

SELECT sum(salary) from company;

SELECT name,id,sum(salary) from company
group by id
order by sum(salary);

select name,phn_no from company
group by id
having salary>25000;

select sum(salary) as net_salary from company;
