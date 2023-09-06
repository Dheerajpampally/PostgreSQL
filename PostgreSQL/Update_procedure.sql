CREATE OR REPLACE PROCEDURE update_employee(
    emp_id integer,
    new_first_name VARCHAR(255),
    new_last_name VARCHAR(255),
    new_salary NUMERIC(10, 2)
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET
        first_name = new_first_name,
        last_name = new_last_name,
        salary = new_salary
    WHERE
        employee_id = emp_id;
END;
$$;

call update_employee(1112,'Lionel','Messi',100000);

select * from employees order by employee_id asc;

