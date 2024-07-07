----cursor iteration using for loop

DECLARE
  CURSOR C1 is  
  SELECT * FROM XXEMP_TL;
BEGIN
  FOR i IN C1 LOOP
    dbms_output.put_line ( I.ENAME);
  END LOOP;
END;


-----cursor iteration using simple loop
DECLARE
  v_employees XXEMP_TL%ROWTYPE;

  CURSOR c1 is
  SELECT * FROM XXEMP_TL;
 
BEGIN
  OPEN c1;
   
  LOOP
  -- Fetch entire row into v_employees record:-
    FETCH c1 INTO v_employees; 
    EXIT WHEN c1%NOTFOUND;
    -- Process data here
    dbms_output.put_line ( v_employees.ENAME);
  END LOOP;
  CLOSE c1;
END;
