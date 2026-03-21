SQL> DECLARE
  2  i int;
  3  n int;
  4  s int;
  5  BEGIN
  6  n:=&n;
  7  i:=&1;
  8  s:=0;
  9  LOOP
 10  IF n mod i=0 THEN
 11  s:=s+1;
 12  END IF;
 13  i:=i+1;
 14  EXIT WHEN i>=n;
 15  END LOOP;
 16  IF n=s THEN
 17  DBMS_OUTPUT.PUT_LINE('Number is Perfect');
 18  ELSE
 19  DBMS_OUTPUT.PUT_LINE('Number is Not Perfect');
 20  END IF;
 21  END;
 22  /
Enter value for n: 28
old   6: n:=&n;
new   6: n:=28;
Enter value for 1: 28
old   7: i:=&1;
new   7: i:=28;
Number is Not Perfect

PL/SQL procedure successfully completed.