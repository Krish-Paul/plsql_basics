declare name hr.employees.first_name%type;

cursor c1 is select first_name from hr.employees;

begin
open c1;
fetch c1 into name;dbms_output.put_line(c1%rowcount||' '||name);
fetch c1 into name;dbms_output.put_line(c1%rowcount||' '||name);
fetch c1 into name;dbms_output.put_line(c1%rowcount||' '||name);
fetch c1 into name;dbms_output.put_line(c1%rowcount||' '||name);
fetch c1 into name;dbms_output.put_line(c1%rowcount||' '||name);
close c1;
end;



--------using loop
declare name hr.employees.first_name%type;
cursor c1 is select first_name from hr.employees;
begin
open c1;
loop
fetch c1 into name;exit when c1%notfound;
dbms_output.put_line(c1%rowcount||' '||name);
end loop;
close c1;
end;

-----for loop
declare 
cursor c1 is select * from hr.employees;
begin
for i in c1 loop
dbms_output.put_line(c1%rowcount||' '||i.last_name);
end loop;

end;
