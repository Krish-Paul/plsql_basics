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















END;
