---goto statement


DECLARE
 
BEGIN
  FOR i in 1..10 LOOP   
    dbms_output.put_line ('loop run for :- '||i);
  
    IF i = 7 THEN
    GOTO JUMP ;
    ELSIF i = 5 THEN
    GOTO hello ;
    END IF;
   
  END LOOP;
 
  <<JUMP>>
  DBMS_OUTPUT.PUT_LINE('Now i am 7 and i am out side the loop');
 
  <<hello>>
  DBMS_OUTPUT.PUT_LINE('Now i am 5 and i am out side the loop');
 
END;



---null
DECLARE
 
BEGIN

  FOR i in 1..10 LOOP   
    dbms_output.put_line ('loop run for :- '||i);
  
    IF i = 5 THEN
    GOTO JUMP_NOW ;
    END IF;
   
  END LOOP;
 
  <<JUMP_NOW>>
  NULL;
 
END;
