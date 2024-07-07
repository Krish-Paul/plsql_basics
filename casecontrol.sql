declare
grade char(1);

begin
grade:='&a';
----case 1         value based simple case statement
case grade
when 'A' then dbms_output.put_line('excellent');
when 'B' then dbms_output.put_line('good');
when 'C' then dbms_output.put_line('okay');
when 'D' then dbms_output.put_line('poor');
else  dbms_output.put_line('fail');
end case;
end;



---case2    conditional case statement

DECLARE
    grade CHAR(1);
BEGIN
    grade := '&a'; -- Using substitution variable with quotes

    CASE 
        WHEN grade='A' THEN dbms_output.put_line('excellent');
        WHEN grade='B' THEN dbms_output.put_line('good');
        WHEN grade='C' THEN dbms_output.put_line('okay');
        WHEN grade='D' THEN dbms_output.put_line('poor');
        ELSE dbms_output.put_line('fail');
    END CASE;
END;
/
