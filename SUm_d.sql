SQL> DECLARE
  2  num int;
  3  s int;
  4  d int;
  5  BEGIN
  6  num:=&num;
  7  s:=0;
  8  WHILE num>0
  9  LOOP
 10  d:=num mod 10;
 11  s:=s+d;
 12  num:=num/10;
 13  END LOOP;
 14  DBMS_OUTPUT.PUT_LINE('Sum Of Digit='||s);
 15  END;
 16  /
Enter value for num: 1234_