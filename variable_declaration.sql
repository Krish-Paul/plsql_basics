DECLARE
vname VARCHAR(100);---simple declaration predefined type and size
vsal EMPLYEES.SAL % type;-- dynamic declaration where the type and size of salary column in employees table is copied to vsal



VAR_1  EMPLOYEES % ROWTYPE; --dynamically stores all the column size and types in one variable VAR_1... 
----if employees has columns names,salary then VAR_1.name ;Var_1.SAL will store the size and type of those columns
