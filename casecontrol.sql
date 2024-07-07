declare
grade char(1);

begin
grade:='&a';

case grade
when 'A' then dbms_output.put_line('excellent');
when 'B' then dbms_output.put_line('good');
when 'C' then dbms_output.put_line('okay');
when 'D' then dbms_output.put_line('poor');
else  dbms_output.put_line('fail');
end case;
end;
