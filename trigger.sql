create or replace trigger bupd
before
update
on hr.departments 
for each row

begin
dbms_output.put_line("before update trigger");
end;

create or replace trigger aupd
after
update
on hr.departments 
for each row

begin
dbms_output.put_line("after update trigger");
end;




---dml triggers of 12 types     row level -before/after-- insert update delete         statement level --before/after  insert update delete
