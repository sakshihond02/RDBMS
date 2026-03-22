SQL> DECLARE
  2  num int;
  3  i int;
  4  ans int;
  5  BEGIN
  6  num:=&num;
  7  i:=1;
  8  LOOP
  9  ans:=num*i;
 10  DBMS_OUTPUT.PUT_LINE('Multiplication Table='||ans);
 11  i:=i+1;
 12  EXIT WHEN i>10;
 13  END LOOP;
 14  END;
 15  /
Enter value for num: 7
old   6: num:=&num;
new   6: num:=7;
Multiplication Table=7
Multiplication Table=14
Multiplication Table=21
Multiplication Table=28
Multiplication Table=35
Multiplication Table=42
Multiplication Table=49
Multiplication Table=56
Multiplication Table=63
Multiplication Table=70

PL/SQL procedure successfully completed.