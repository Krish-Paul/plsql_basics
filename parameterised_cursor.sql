---taking 1 parameter
DECLARE
V_NAME  XX_EMP_TL.ENAME%TYPE;
V_SAL XX_EMP_TL.SAL%TYPE;

   --Declare Cursor for all dept  --
  CURSOR C1(P_DEPTNO XX_EMP_TL.DEPTNO%TYPE) IS
  SELECT Ename, sal FROM XX_EMP_TL where DEPTNO = P_DEPTNO;
 
BEGIN

    OPEN C1(20);
    dbms_output.put_line ('------------  Department 20 Employee information  ------------');
        LOOP FETCH C1 INTO V_NAME, V_SAL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name||'  and Your Salary is : '||V_SAL ); 
        END LOOP;
    CLOSE C1;
       
    OPEN C1(30); -- Re-Use Above cursor for 30 department --
    dbms_output.put_line ('------------  Department 30 Employee information  ------------');
        LOOP FETCH C1 INTO V_NAME, V_SAL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name||'  and Your Salary is : '||V_SAL ); 
        END LOOP;
    CLOSE C1;
   
    OPEN C1(40); -- Re-Use Above cursor for 40 department --
    dbms_output.put_line ('------------  Department 40 Employee information  ------------');
        LOOP FETCH C1 INTO V_NAME, V_SAL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name||'  and Your Salary is : '||V_SAL ); 
        END LOOP;
    CLOSE C1;
   
END;

------more than 1 parameter
DECLARE
V_NAME  XX_EMP_TL.ENAME%TYPE;
V_SAL XX_EMP_TL.SAL%TYPE;

   --Declare Cursor for all dept  --
  CURSOR C1(P_DEPTNO XX_EMP_TL.DEPTNO%TYPE, P_SAL XX_EMP_TL.SAL%TYPE) IS
  SELECT Ename, sal
  FROM XX_EMP_TL
  where DEPTNO = P_DEPTNO
  AND SAL > P_SAL;
 
BEGIN
    OPEN C1(20, 21000);
    dbms_output.put_line ('------------  Department 20 Employee information where salary is more then  21000  ------------');
        LOOP FETCH C1 INTO V_NAME, V_SAL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name||'  and Your Salary is : '||V_SAL ); 
        END LOOP;
    CLOSE C1;
       
    OPEN C1(30,10000); -- Re-Use Above cursor for 30 department  where salary is more then  10000 -----
    dbms_output.put_line ('------------  Department 30 Employee information where salary is more then  10000  ------------');
        LOOP FETCH C1 INTO V_NAME, V_SAL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name||'  and Your Salary is : '||V_SAL ); 
        END LOOP;
    CLOSE C1;
   
    OPEN C1(40,17000); -- Re-Use Above cursor for 40 department where salary is more then  17000--
    dbms_output.put_line ('------------  Department 40 Employee information where salary is more then  17000   ------------');
        LOOP FETCH C1 INTO V_NAME, V_SAL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name||'  and Your Salary is : '||V_SAL ); 
        END LOOP;
    CLOSE C1;
   
END;









------------using for loop   
declare 
cursor c1(id hr.employees.employee_id%type)is select first_name  from hr.employees where employee_id=id;
begin
for i in c1(102)loop
dbms_output.put_line(i.first_name);
end loop;
for i in c1(103)loop
dbms_output.put_line(i.first_name);
end loop;
for i in c1(104)loop
dbms_output.put_line(i.first_name);
end loop;
end;
