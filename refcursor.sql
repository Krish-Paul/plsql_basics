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

