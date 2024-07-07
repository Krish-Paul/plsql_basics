ACCEPT a PROMPT 'Enter value for Hindi: ';
ACCEPT b PROMPT 'Enter value for Maths: ';
ACCEPT c PROMPT 'Enter value for English: ';

VARIABLE a NUMBER;
VARIABLE b NUMBER;
VARIABLE c NUMBER;
EXEC :a := &a;
EXEC :b := &b;
EXEC :c := &c;


Declare 
s1 number;
s2 number;
s3 number;
s4 number;
s5 number;

BEGIN
s1:=:a;
s2:=:b;
s3:=:c;
-----case 1    single if statement
if s1>33 then 
dbms_output.put_line('pass hindi');
end if;

if s2>33 then
dbms_output.put_line('pass maths');
end if;

if s3>33 then
dbms_output.put_line('pass english');
end if;

------case 2   if else statement
if s1>33 then 
dbms_output.put_line('pass hindi');
else
dbms_output.put_line('fail hindi');
end if;

if s2>33 then
dbms_output.put_line('pass maths');
else
dbms_output.put_line('fail maths');
end if;

if s3>33 then
dbms_output.put_line('pass english');
else
dbms_output.put_line('fail english');
end if;


--------case 3           nested if else
if s1 is not null then
if s2 is not null then
if s3 is not null then
s4:=s1+s2+s3;
s5:=s4/3;
dbms_output.put_line('total'||s4||'  '||'avg'||s5);
else 
dbms_output.put_line('english null');
end if;
else
dbms_output.put_line('maths null');
end if;
else
dbms_output.put_line('hindi null');
end if;

--case 4   else-if statement
if s5>=90 then
dbms_output.put_line('excellent');
elsif s5>=70 and s5<90 then
dbms_output.put_line('good');
elsif s5>=40 and s5<70 then
dbms_output.put_line('okk');
elsif s5<40 then
dbms_output.put_line('fail');
end if;









END;
