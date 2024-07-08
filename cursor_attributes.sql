--SQL%ISOPEN Attribute: this attribute checkes wheather cursor Is the Cursor Open or not and return boolean value TRUE OR FALSE respectively.

--SQL%FOUND Attribute:  Were Any Rows Affected and return boolean value TRUE OR FALSE respectively.

--SQL%NOTFOUND Attribute: Were No Rows Affected  and return boolean value TRUE OR FALSE respectively.

--SQL%ROWCOUNT Attribute: How Many Rows Were Affected or not  and return number of rows are affected by this DML statements.

--SQL%BULK_ROWCOUNT : Getting Number of Rows Affected by FORALL Statement

--SQL%BULK_EXCEPTIONS : Handling FORALL Exceptions After FORALL Statement Completes


declare name hr.employees.first_name%type;
cursor c1 is select first_name from hr.employees;
begin
if not c1%isopen then 
open c1;
end if;
loop
fetch c1 into name;
if c1%notfound then exit;end if;
dbms_output.put_line(name||' '||c1%rowcount);
end loop;
end;
