DECLARE
vname VARCHAR(100);---simple declaration predefined type and size
vsal EMPLYEES.SAL % type;-- dynamic declaration where the type and size of salary column in employees table is copied to vsal



VAR_1  EMPLOYEES % ROWTYPE; --dynamically stores all the column size and types in one variable VAR_1... 
----if employees has columns names,salary then VAR_1.name ;Var_1.SAL will store the size and type of those columns

------------based on single table,where only certain column type and size is stored, not all, typwe keyword is used 
DECLARE

TYPE XX_EMP_INFO IS RECORD (--xx_emp_info is type name
                                    EMPNO  XXEMP_TL.EMPNO%TYPE  ,
                                    ENAME XXEMP_TL.ENAME%TYPE ,
                                    DEPTNO XXEMP_TL.DEPTNO%TYPE                             
                                  );


V_EMP_TABLE  XX_EMP_INFO;--type is stored in a variable




--if 2 tables are used 
DECLARE

TYPE XX_EMP_TYPE IS RECORD (
                                    EMPNO  XXEMP_TL.EMPNO%TYPE  ,
                                    ENAME XXEMP_TL.ENAME%TYPE ,
                                    DEPTNO XXDEPT_TL.DEPTNO%TYPE , 
                                    DNAME XXDEPT_TL.DNAME%TYPE
                                  );


V_EMP_TABLE  XX_EMP_TYPE;
---
