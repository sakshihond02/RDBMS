SQL> DECLARE
  2  a int;
  3  b int;
  4  BEGIN
  5  a:=&a;
  6  b:=&b;
  7  IF a>b THEN
  8  DBMS_OUTPUT.PUT_LINE('a is Maximum');
  9  ELSE
 10  DBMS_OUTPUT.PUT_LINE('b is Maximum');
 11  END IF;
 12  END;
 13  /
Enter value for a: 10
old   5: a:=&a;
new   5: a:=10;
Enter value for b: 20
old   6: b:=&b;
new   6: b:=20;
b is Maximum

PL/SQL procedure successfully completed.