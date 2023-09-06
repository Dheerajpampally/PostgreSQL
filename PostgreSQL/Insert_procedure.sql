CREATE OR REPLACE PROCEDURE add_emp( employee_id INTEGER, first_name VARCHAR, last_name VARCHAR, salary NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (employee_id, first_name, last_name, salary) VALUES (employee_id, first_name, last_name, salary);
END;
$$;

CALL add_emp(1002,'Aman', 'Varma', 30000);

select * from employees;

CALL add_emp(1112,'Dev', 'Roy', 45000);

CALL add_emp(1231,'Sam', 'Curren', 40000);




