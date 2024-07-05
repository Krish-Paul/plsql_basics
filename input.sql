--dynamic input using &
DECLARE 
   v1 NUMBER := &v1; 
   v2 NUMBER := &v2; 
   v3 NUMBER; 
BEGIN 
   v3 := v1 + v2; 
   DBMS_OUTPUT.PUT_LINE('total: ' || v3); 
END;
