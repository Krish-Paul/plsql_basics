CREATE OR REPLACE PROCEDURE XX_ADD_PROC AS

   V_EMPNO NUMBER;
   V_NAME VARCHAR2(100);
   V_JOB VARCHAR2(100);
   V_SAL NUMBER;
   V_DEPTNO NUMBER;

BEGIN

   V_EMPNO := 8888; -- Use number without quotes
   V_NAME := 'RAVI';
   V_JOB := 'SALESMAN';
   V_SAL := 11000;
   V_DEPTNO := 10;

   dbms_output.put_line('Empno | ' || V_EMPNO);
   dbms_output.put_line('Name | ' || V_NAME);
   dbms_output.put_line('Job | ' || V_JOB);
   dbms_output.put_line('Salary | ' || V_SAL);
   dbms_output.put_line('Department No | ' || V_DEPTNO);

EXCEPTION 
   WHEN OTHERS THEN
      dbms_output.put_line('We are in Exception so please check your process');

END XX_ADD_PROC;
/
BEGIN
   XX_ADD_PROC;
END;
/
