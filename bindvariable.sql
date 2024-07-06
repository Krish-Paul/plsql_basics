VARIABLE  V_NAME VARCHAR2(100);--declare bind variable

--------
Way_1. :-
--------
EXEC :V_NAME := 'Oracle Shooter';

BEGIN
dbms_output.put_line(:V_NAME);
END;


--------
Way_2. :-
--------
BEGIN
:V_NAME := 'Oracle Shooter';
dbms_output.put_line(:V_NAME);
END;
