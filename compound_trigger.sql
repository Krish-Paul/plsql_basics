CREATE OR REPLACE TRIGGER  XX_COMP_EMPLOYEE_TRG
FOR  INSERT OR DELETE OR UPDATE
--OF SAL
ON XX_EMP
COMPOUND TRIGGER
 
   -- Declarative Section (optional) for variables and constants
       
     --Section 1 -- sequence 1 -
     BEFORE STATEMENT IS
     BEGIN
     dbms_output.put_line ('************   Statement Level - BEFORE Trigger *************' );
         IF INSERTING THEN
         dbms_output.put_line ('INSERT');
         ELSIF UPDATING THEN
         dbms_output.put_line ('UPDATE');
         ELSIF DELETING THEN
         dbms_output.put_line ('DELETE');
         END IF;      
     END BEFORE STATEMENT;
  
     --Section 2 -- sequence 2 -
     BEFORE EACH ROW IS
     BEGIN
       dbms_output.put_line ('************   Row Level - BEFORE Trigger *************' );
       IF INSERTING THEN
         dbms_output.put_line ('INSERT');
         ELSIF UPDATING THEN
         dbms_output.put_line ('UPDATE');
         ELSIF DELETING THEN
         dbms_output.put_line ('DELETE');
         END IF;   
     END BEFORE EACH ROW;
  
     --Section 3 -- sequence 3 -
     AFTER EACH ROW IS
     BEGIN
       dbms_output.put_line ('************   Row Level - AFTER Trigger *************' );
       IF INSERTING THEN
         dbms_output.put_line ('INSERT');
         ELSIF UPDATING THEN
         dbms_output.put_line ('UPDATE');
         ELSIF DELETING THEN
         dbms_output.put_line ('DELETE');
         END IF;   
     END AFTER EACH ROW;
  
     --Section 4 -- sequence 4 -
     AFTER STATEMENT IS
     BEGIN
       dbms_output.put_line ('************   Statement Level - AFTER Trigger *************' );
       IF INSERTING THEN
         dbms_output.put_line ('INSERT');
         ELSIF UPDATING THEN
         dbms_output.put_line ('UPDATE');
         ELSIF DELETING THEN
         dbms_output.put_line ('DELETE');
         END IF;   
     END AFTER STATEMENT;
 
END XX_COMP_EMPLOYEE_TRG;
