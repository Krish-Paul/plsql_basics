
---while loop
declare i number:=0;
begin
while i<=5 loop
dbms_output.put_line(i);
i:=i+1;
end loop;
end;


---for loop
declare i number:=0;
begin
for i in 1..4 loop
dbms_output.put_line(i);
end loop;
end;

---for loop in reverse    syntax always for i in start value..end value loop
declare i number:=0;
begin
for i in reverse 1..4 loop
dbms_output.put_line(i);
end loop;
end;
