

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

-----simple loop with continue statement  
declare
x number :=0;
begin
loop
x:=x+1;
if x<3 then continue;end if;----- for CONTINUE WHEN statetement, remove if and use           continue when x<3;
dbms_output.put_line(x);
exit when x>5;
end loop;
end;


-----nested loop
declare i number:=0;
j number:=0;
begin
loop
i:=i+1;
j:=0;
loop
j:=j+1;
dbms_output.put_line(i||' '||j);
exit when j>=3;
end loop;
exit when i>=3;
end loop;
end;
