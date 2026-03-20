SQL> DECLARE
  2  s1 int;
  3  s2 int;
  4  s3 int;
  5  s4 int;
  6  s5 int;
  7  tot int;
  8  per float;
  9  BEGIN
 10  S1:=&S1;
 11  S2:=&S2;
 12  S3:=&S3;
 13  S4:=&S4;
 14  S5:=&S5;
 15  tot:=s1+s2+s3+s4+s5;
 16  per:=tot/5;
 17  DBMS_OUTPUT.PUT_LINE('Total='||tot);
 18  DBMS_OUTPUT.PUT_LINE('Percentage='||per);
 19  IF per>35 and per<=45 THEN
 20  DBMS_OUTPUT.PUT_LINE('Pass');
 21  ELSE IF per>45 and per<=60 THEN
 22  DBMS_OUTPUT.PUT_LINE('Grade=C');
 23  ELSE IF per>60 and per<=70 THEN
 24  DBMS_OUTPUT.PUT_LINE('Grade=B');
 25  ELSE IF per>70 and per<=85 THEN
 26  DBMS_OUTPUT.PUT_LINE('Grade=A');
 27  ELSE IF per>85 and per<=100 THEN
 28  DBMS_OUTPUT.PUT_LINE('Distinction');
 29  ELSE
 30  DBMS_OUTPUT.PUT_LINE('Fail');
 31  END IF;
 32  END IF;
 33  END IF;
 34  END IF;
 35  END IF;
 36  END;
 37  /
Enter value for s1: 89
old  10: S1:=&S1;
new  10: S1:=89;
Enter value for s2: 88
old  11: S2:=&S2;
new  11: S2:=88;
Enter value for s3: 92
old  12: S3:=&S3;
new  12: S3:=92;
Enter value for s4: 89
old  13: S4:=&S4;
new  13: S4:=89;
Enter value for s5: 78
old  14: S5:=&S5;
new  14: S5:=78;
Total=436
Percentage=87.2
Distinction

PL/SQL procedure successfully completed.