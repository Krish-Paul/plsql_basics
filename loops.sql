

------simple loop with EXIT statement
declare
x number :=0;
begin
loop
dbms_output.put_line(x);
x:=x+1;
if x>10 then exit;
end if;
end loop;
end;

---simple loop with EXIT WHEN statement
declare
x number :=0;
begin
loop
dbms_output.put_line(x);
x:=x+1;
exit when x>10;
end loop;
end;
