CREATE OR REPLACE PROCEDURE delete_employee(
    emp_id integer
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM employees
    WHERE employee_id = emp_id;
END;
$$;

call delete_employee(1231);

select * from employees;