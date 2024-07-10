CREATE OR REPLACE TRIGGER XX_INSERT_EMPLOYEE_TRG
    INSTEAD OF INSERT ON XX_EMPLOYEE_V
    FOR EACH ROW
DECLARE
    l_DEPTNO NUMBER ;
    l_COUNT NUMBER:=0;
    l_EMP_COUNT NUMBER;
BEGIN
    -- insert a new Employee first
    select COUNT(*) INTO l_EMP_COUNT from XX_EMP  WHERE EMPNO = :NEW.EMPNO ;
   
    IF l_EMP_COUNT > 0 THEN NULL;
    ELSE
    INSERT INTO xx_emp(EMPNO, ENAME, JOB, SAL, DEPTNO)
    VALUES(:NEW.EMPNO, :NEW.ENAME, :NEW.JOB, :NEW.SAL, :NEW.DEPTNO)   
    RETURNING DEPTNO INTO l_DEPTNO;
    dbms_output.put_line ('********* Employee Table Insert -  DONE **********');
    END IF;
   
    -- insert the Department
    select COUNT(*) INTO l_COUNT from XX_DEPT WHERE DEPTNO = l_DEPTNO ;
   
    select COUNT(*) INTO l_COUNT from XX_DEPT WHERE DEPTNO =  :NEW.DEPTNO ;
    
    IF l_COUNT > 0 OR L_COUNT IS NULL THEN NULL;
       
    ELSE
       
    INSERT INTO xx_dept(DEPTNO, DNAME, LOC)
    VALUES(NVL(:NEW.DEPTNO,l_DEPTNO), :NEW.DNAME, :NEW.LOC );
       
    dbms_output.put_line ('********* Department Table Insert -  DONE **********');
    END IF;
END;
 
