
----use raise statetement
DECLARE
  V_Your_age   NUMBER:=16;
  NOT_VALID_AGE EXCEPTION;
BEGIN
 
  IF V_Your_age < 18 THEN
    RAISE NOT_VALID_AGE;
  END IF;
  
EXCEPTION
WHEN NOT_VALID_AGE THEN
    DBMS_OUTPUT.PUT_LINE ('You are not authorized for vote you are below 18 years');   
END;

----use raise_application_error statement
DECLARE
  V_Your_age   NUMBER:=16;
BEGIN
 
  IF V_Your_age < 18 THEN
     RAISE_APPLICATION_ERROR (-20008, 'You are not authorized for vote you are below 18 years');
  END IF;
  
  EXCEPTION WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;


----there are some exceptions defined in oracle which only have code anderror message but not any named. they are called unnamed exceptions. they can be named using PRAGMA_INIT
DECLARE
LARGE_VALUE  exception;
PRAGMA EXCEPTION_INIT(LARGE_VALUE, -1438);
BEGIN

INSERT INTO SCOTT.emp  (EMPNO) VALUES (123432123312);


EXCEPTION
WHEN LARGE_VALUE THEN
dbms_output.put_line('SQLCODE: '|| SQLCODE);
dbms_output.put_line('SQLERRM: '|| SQLERRM);
END;

