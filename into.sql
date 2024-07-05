
--use in oracle live..into is used to copy value into a new variable
select FIRST_NAME,LAST_NAME,EMPLOYEE_ID,JOB_ID FROM HR.EMPLOYEES
VARIABLE emp_id NUMBER;
EXEC :emp_id := 101;

DECLARE
   name VARCHAR2(100);
BEGIN
   SELECT FIRST_NAME INTO name
   FROM HR.EMPLOYEES
   WHERE EMPLOYEE_ID = 101;
   
   dbms_output.put_line(name);
END;
/
