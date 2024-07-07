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
-----single if statement
if s1>33 then 
dbms_output.put_line('pass hindi');
end if;

if s2>33 then
dbms_output.put_line('pass maths');
end if;

if s3>33 then
dbms_output.put_line('pass english');
end if;

END;
