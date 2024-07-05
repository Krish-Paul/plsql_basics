VARIABLE  V_NAME VARCHAR2(100);--declare bind variable

--------
Way_1. :-
--------
EXEC :V_NAME := 'Oracle Shooter';

--------
Way_2. :-
--------
BEGIN
:V_NAME := 'Oracle Shooter';
END;
