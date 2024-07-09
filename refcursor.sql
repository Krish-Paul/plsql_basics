-------ref cursor is used to avoid multiple cursors for different select statements but only use 1 single cursor

declare
type reff is ref cursor;
c1 reff;
sal hr.employees.employee_id%type;
name hr.employees%rowtype;
begin
open c1 for select * from hr.employees;
loop
fetch c1 into name;
exit when c1%notfound;
dbms_output.put_line(name.first_name||name.last_name||c1%rowcount);
end loop;
close c1;
open c1 for select employee_id from hr.employees;
loop
fetch c1 into sal;
exit when c1%notfound;
dbms_output.put_line(sal);
end loop;
close c1;
end;

---weak ref cursor have no return type. strong refcursor strictly has return type
DECLARE
    TYPE ref_cursor IS REF CURSOR;----sstrong  TYPE ref_cursor IS REF CURSOR return hr.employees%rowtype;
    c1 ref_cursor;
    
    emp_row hr.employees%ROWTYPE;
    dept_row hr.departments%ROWTYPE;
    emp_counter NUMBER := 0;
    dept_counter NUMBER := 0;
BEGIN
    -- Fetch and process rows from hr.employees
    OPEN c1 FOR SELECT * FROM hr.employees;
    LOOP
        FETCH c1 INTO emp_row;
        EXIT WHEN c1%NOTFOUND OR emp_counter >= 10;
        emp_counter := emp_counter + 1;
        DBMS_OUTPUT.PUT_LINE(emp_row.first_name || ' ' || emp_row.last_name || ' ' || c1%ROWCOUNT);
    END LOOP;
    CLOSE c1;
    
    -- Fetch and process rows from hr.departments
    OPEN c1 FOR SELECT * FROM hr.departments;
    LOOP
        FETCH c1 INTO dept_row;
        EXIT WHEN c1%NOTFOUND OR dept_counter >= 10;
        dept_counter := dept_counter + 1;
        DBMS_OUTPUT.PUT_LINE(dept_row.department_name || ' ' || c1%ROWCOUNT);
    END LOOP;
    CLOSE c1;
END;
/

