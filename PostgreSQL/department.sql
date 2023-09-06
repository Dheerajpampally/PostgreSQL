CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(255),
    location VARCHAR(100),
    manager_id INT
);

select * from department;

alter table department
Drop column manager_id;

truncate table department;

insert into department values(0011,'Loans','Ernakulam','Daniel');
insert into department values(0033,'Travel','Ernakulam','Amal');
insert into department values(0046,'Forex','Ernakulam','Rose');
insert into department values(0077,'Tour','Ernakulam','John');

select * from department;

alter table department
add column name varchar(20);

select * from company
inner join department
on company.name=department.name;

select department.name,age,employee_code from company
inner join department
on company.name=department.name;

select * from company
full outer join department
on company.name=department.name
where company.id is null or department.department_id is null;

select * from company
left outer join department
on company.name=department.name
where department.department_id is not null;

select * from company
right outer join department
on company.name=department.name;

select name from company
union 
select location from department;

show all
show timezone

select now()

select timeofday()

select current_time
    
select current_date
