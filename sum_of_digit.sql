SQL> Create OR Replace Function Sum_digit(n NUMBER)
  2  RETURN NUMBER
  3  IS
  4  num NUMBER;
  5  rem NUMBER;
  6  sum1 NUMBER :=0;
  7  BEGIN
  8  num :=n;
  9  WHILE num > 0 LOOP
 10  rem :=num MOD 10;
 11  sum1 :=sum1 + rem;
 12  num :=TRUNC(num / 10);
 13  END LOOP;
 14  RETURN sum1;
 15  END;
 16  /

Function created.

SQL> DECLARE
  2  result NUMBER;
  3  BEGIN
  4  result :=sum_digit(1234);
  5  DBMS_OUTPUT.PUT_LINE('Sum of digit='||result);
  6  END;
  7  /
Sum of digit=10

PL/SQL procedure successfully completed.