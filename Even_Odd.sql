SQL> DECLARE
  2  num int;
  3  BEGIN
  4  num:=&num;
  5  IF num mod 2=0 THEN
  6  DBMS_OUTPUT.PUT_LINE('Number is Even');
  7  ELSE
  8  DBMS_OUTPUT.PUT_LINE('Number is Odd');
  9  END IF;
 10  END;
 11  /
Enter value for num: 24
old   4: num:=&num;
new   4: num:=24;
Number is Even

PL/SQL procedure successfully completed